import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:key_guardmanager/key_guardmanager.dart';
import 'package:local_auth/local_auth.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:zwallet/settings.pb.dart' show CoinSettings;
import 'package:zwallet/src/rust/api/warp.dart';
import 'package:flutter_palette/flutter_palette.dart';

import 'appsettings.dart';
import 'coin/coin.dart';
import 'generated/intl/messages.dart';
import 'main.dart';
import 'src/rust/types.dart';
import 'store.dart';

mixin WithLoadingAnimation<T extends StatefulWidget> on State<T> {
  bool loading = false;

  Widget wrapWithLoading(Widget child) {
    return LoadingWrapper(loading, child: child);
  }

  Future<U> load<U>(Future<U> Function() calc) async {
    try {
      setLoading(true);
      return await calc();
    } finally {
      setLoading(false);
    }
  }

  setLoading(bool v) {
    if (mounted) setState(() => loading = v);
  }
}

class LoadingWrapper extends StatelessWidget {
  final bool loading;
  final Widget child;

  const LoadingWrapper(this.loading, {super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    if (!loading) return child;
    final t = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
            height: size.height,
            width: size.width,
            color: t.colorScheme.surface),
        Opacity(opacity: 0.4, child: child),
        SizedBox(
          height: size.height - 200,
          child: Align(
              alignment: Alignment.center,
              child: LoadingAnimationWidget.hexagonDots(
                  color: t.colorScheme.primary, size: 100)),
        )
      ],
    );
  }
}

Future<bool> showMessageBox2(BuildContext context, String title, String content,
    {String? label, bool dismissable = true}) async {
  final confirm = await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (context) =>
          AlertDialog(title: Text(title), content: Text(content), actions: [
            if (dismissable)
              ElevatedButton.icon(
                  onPressed: () => GoRouter.of(context).pop(),
                  icon: const Icon(Icons.check),
                  label: Text(label ?? "OK"))
          ]));
  return confirm ?? false;
}

extension ScopeFunctions<T> on T {
  R let<R>(R Function(T) block) => block(this);
}

// #region Paths
Future<String> getDataPath() async {
  String? home;
  if (Platform.isAndroid)
    home = (await getApplicationDocumentsDirectory()).parent.path;
  if (Platform.isWindows) home = Platform.environment['LOCALAPPDATA'];
  if (Platform.isLinux)
    home =
        Platform.environment['XDG_DATA_HOME'] ?? Platform.environment['HOME'];
  if (Platform.isMacOS) home = (await getApplicationSupportDirectory()).path;
  if (Platform.isIOS) home = (await getApplicationDocumentsDirectory()).path;
  final h = home ?? "";
  return h;
}

Future<String> getTempPath() async {
  if (isMobile()) {
    final d = await getTemporaryDirectory();
    return d.path;
  }
  final dataPath = await getDataPath();
  final tempPath = p.join(dataPath, "tmp");
  Directory(tempPath).createSync(recursive: true);
  return tempPath;
}

Future<String> getDbPath() async {
  if (Platform.isIOS) return (await getApplicationDocumentsDirectory()).path;
  final h = await getDataPath();
  return "$h/databases";
}
// #endregion

bool isMobile() => Platform.isAndroid || Platform.isIOS;

class TimeSeriesPoint<V> {
  final int day;
  final V value;

  TimeSeriesPoint(this.day, this.value);

  @override
  String toString() => '($day, $value)';
}

const secsPerDay = 24 * 3600;
const msecsPerDay = secsPerDay * 1000;

Future<double?> getFxRate(String coin, String fiat) async {
  const base = "api.coingecko.com";
  final uri = Uri.https(
      base, '/api/v3/simple/price', {'ids': coin, 'vs_currencies': fiat});
  try {
    final rep = await http.get(uri);
    if (rep.statusCode == 200) {
      final json = jsonDecode(rep.body) as Map<String, dynamic>;
      final p = json[coin][fiat.toLowerCase()];
      return (p is double) ? p : (p as int).toDouble();
    }
  } catch (e) {
    logger.e(e);
  }
  return null;
}

List<TimeSeriesPoint<V>> sampleDaily<T, Y, V>(
    Iterable<T> timeseries,
    int start,
    int end,
    int Function(T) getDay,
    Y Function(T) getY,
    V Function(V, Y) accFn,
    V initial) {
  assert(start % secsPerDay == 0);
  final s = start ~/ secsPerDay;
  final e = end ~/ secsPerDay;

  List<TimeSeriesPoint<V>> ts = [];
  var acc = initial;

  var tsIterator = timeseries.iterator;
  var next = tsIterator.moveNext() ? tsIterator.current : null;
  var nextDay = next?.let((n) => getDay(n));

  for (var day = s; day <= e; day++) {
    while (nextDay != null && day == nextDay) {
      // accumulate
      acc = accFn(acc, getY(next!));
      next = tsIterator.moveNext() ? tsIterator.current : null;
      nextDay = next?.let((n) => getDay(n));
    }
    ts.add(TimeSeriesPoint(day, acc));
  }
  return ts;
}

DateTime toDateTime(int ts) => DateTime.fromMillisecondsSinceEpoch(ts * 1000);

String centerTrim(String v, {int leading = 2, int length = 16}) {
  if (v.length <= length) return v;
  final e = v.length - length + leading;
  return "${v.substring(0, leading)}...${v.substring(e)}";
}

String resolveURL(CoinBase c, CoinSettings settings) {
  if (settings.lwd.index >= 0 && settings.lwd.index < c.lwd.length)
    return c.lwd[settings.lwd.index].url;
  else {
    return settings.lwd.customURL;
  }
}

// #region Authentication
Future<bool> authBarrier(BuildContext context,
    {bool dismissable = false}) async {
  final s = S.of(context);
  while (true) {
    final authed = await authenticate(context, s.pleaseAuthenticate);
    if (authed) return true;
    if (dismissable) return false;
  }
}

Future<bool> authenticate(BuildContext context, String reason) async {
  final s = S.of(context);
  if (!isMobile()) {
    if (appStore.dbPassword.isEmpty) return true;
    final formKey = GlobalKey<FormBuilderState>();
    final passwdController = TextEditingController();
    final authed = await showAdaptiveDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog.adaptive(
                title: Text(s.pleaseAuthenticate),
                content: Card(
                    child: FormBuilder(
                        key: formKey,
                        child: FormBuilderTextField(
                          name: 'passwd',
                          decoration:
                              InputDecoration(label: Text(s.databasePassword)),
                          controller: passwdController,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                            (v) => v != appStore.dbPassword
                                ? s.invalidPassword
                                : null,
                          ]),
                          obscureText: true,
                        ))),
                actions: [
                  IconButton(
                      onPressed: () => GoRouter.of(context).pop(false),
                      icon: Icon(Icons.cancel)),
                  IconButton(
                      onPressed: () {
                        if (formKey.currentState!.validate())
                          GoRouter.of(context).pop(true);
                      },
                      icon: Icon(Icons.check)),
                ],
              );
            }) ??
        false;
    return authed;
  }

  final localAuth = LocalAuthentication();
  try {
    final bool didAuthenticate;
    if (Platform.isAndroid && !await localAuth.canCheckBiometrics) {
      didAuthenticate = await KeyGuardmanager.authStatus == "true";
    } else {
      didAuthenticate = await localAuth.authenticate(
          localizedReason: reason, options: AuthenticationOptions());
    }
    if (didAuthenticate) {
      return true;
    }
  } on PlatformException catch (e) {
    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
            title: Text(S.of(context).noAuthenticationMethod),
            content: Text(e.message ?? '')));
  }
  return false;
}
// #endregion

void handleAccel(AccelerometerEvent event) {
  final n = sqrt(event.x * event.x + event.y * event.y + event.z * event.z);
  final inclination = acos(event.z / n) / pi * 180 * event.y.sign;
  final flat = inclination < 20
      ? true
      : inclination > 40
          ? false
          : null;
  flat?.let((f) {
    if (f != appStore.flat) appStore.flat = f;
  });
}

SendContext? uriToSendContext(int coin, String puri) {
  final p = decodePaymentUri(coin: coin, uri: puri);
  return SendContext(
      address: p.address,
      pools: 7,
      amount: p.amount,
      receiverFee: false,
      memo: ParsedMemo(reply: false, subject: "", memo: p.memo));
}

// #region parse/serialize zats
BigInt stringToAmount(String? s) {
  final v = parseNumber(s);
  return (ZECUNIT_DECIMAL * v).toBigInt();
}

String amountToString(BigInt amount, {int? digits}) {
  final dd = digits ?? decimalDigits(appSettings.fullPrec);
  return decimalFormat(amount.toDouble() / zatsPerZec, dd);
}

Decimal parseNumber(String? sn) {
  if (sn == null || sn.isEmpty) return Decimal.zero;
  // There is no API to parse directly from intl string
  final v = NumberFormat.currency(locale: Platform.localeName).parse(sn);
  return Decimal.parse(v.toStringAsFixed(8));
}

int decimalDigits(bool fullPrec) => fullPrec ? 8 : 3;
String decimalFormat(double x, int decimalDigits, {String symbol = ''}) {
  return NumberFormat.currency(
    locale: Platform.localeName,
    decimalDigits: decimalDigits,
    symbol: symbol,
  ).format(x).trimRight();
}
// #endregion

ColorPalette getPalette(Color color, int n) => ColorPalette.polyad(
      color,
      numberOfColors: max(n, 1),
      hueVariability: 15,
      saturationVariability: 10,
      brightnessVariability: 10,
    );

class PoolBitSet {
  static Set<int> toSet(int pools) {
    return List.generate(3, (index) => pools & (1 << index) != 0 ? index : null)
        .whereType<int>()
        .toSet();
  }

  static int fromSet(Set<int> poolSet) => poolSet.map((p) => 1 << p).fold(0, (a, b) => a | b);
}

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:path_provider/path_provider.dart';

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

  LoadingWrapper(this.loading, {super.key, required this.child});

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
        Container(
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
                  icon: Icon(Icons.check),
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

DateTime toDateTime(int ts) => DateTime.fromMillisecondsSinceEpoch(ts * 1000);

String centerTrim(String v, {int leading = 2, int length = 16}) {
  if (v.length <= length) return v;
  final e = v.length - length + leading;
  return "${v.substring(0, leading)}...${v.substring(e)}";
}

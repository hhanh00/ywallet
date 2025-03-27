import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:zwallet/main.dart';

import '../accounts.dart';
import '../appsettings.dart';
import '../coin/coins.dart';
import '../generated/intl/messages.dart';
import 'pages/scan.dart';
import 'src/rust/api/warp.dart';
import 'src/rust/types.dart';
import 'types.dart';
import 'utils.dart';

class Panel extends StatelessWidget {
  final String title;
  final String? text;
  final int? maxLines;
  final Widget? child;
  final bool save;
  const Panel(this.title,
      {super.key, this.text, this.maxLines, this.child, this.save = false});

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
        decoration: InputDecoration(
            label: Text(title), border: const OutlineInputBorder()),
        child: text != null
            ? Row(children: [
                Expanded(child: SelectableText(text!, maxLines: maxLines)),
                SizedBox(
                    width: 40,
                    child: IconButton(
                        onPressed: () => _copy(context),
                        icon: const Icon(Icons.copy))),
                if (save)
                  SizedBox(
                      width: 40,
                      child: IconButton(
                          onPressed: () => _save(context),
                          icon: const Icon(Icons.save))),
              ])
            : child);
  }

  _copy(BuildContext context) {
    final s = S.of(context);
    Clipboard.setData(ClipboardData(text: text!));
    // showSnackBar(s.copiedToClipboard);
  }

  _save(BuildContext context) {
    GoRouter.of(context).push('/showqr?title=$title', extra: text!);
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

class RecipientWidget extends StatelessWidget {
  final Recipient recipient;
  final bool? selected;
  const RecipientWidget(this.recipient, {super.key, this.selected});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final t = Theme.of(context);
    final select = selected ?? false;
    return Card(
        color: select ? t.primaryColor : null,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              if (recipient.message.reply)
                Text(s.includeReplyTo, style: t.textTheme.labelSmall),
              MessageContentWidget(recipient.address, recipient.message),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text(amountToString(recipient.amount))),
            ],
          ),
        ));
  }
}

class MosaicWidget extends StatelessWidget {
  final List<MoreTile> buttons;
  MosaicWidget(this.buttons);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final palette = getPalette(t.colorScheme.inversePrimary, buttons.length);
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final button = buttons[index];
          return ListTile(
            leading: SizedBox(width: 40, child: button.icon),
            title: Text(button.text, style: t.textTheme.headlineSmall),
            tileColor: palette[index],
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _onMenu(context, button),
          );
        },
        itemCount: buttons.length);
  }

  _onMenu(BuildContext context, MoreTile button) async {
    final onPressed = button.onPressed;
    if (onPressed != null) {
      await onPressed();
    } else {
      if (button.secured) {
        final s = S.of(context);
        final auth = await authenticate(context, s.secured);
        if (!auth) return;
      }
      GoRouter.of(context).push(button.url);
    }
  }
}

class MoreSection {
  final Widget title;
  final List<MoreTile> tiles;
  MoreSection({
    required this.title,
    required this.tiles,
  });
}

class MoreTile {
  final String url;
  final String text;
  final Widget icon;
  final bool secured;
  final Future<void> Function()? onPressed;

  MoreTile(
      {required this.url,
      required this.text,
      required this.icon,
      this.secured = false,
      this.onPressed});
}

class MediumTitle extends StatelessWidget {
  final String title;
  MediumTitle(this.title);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: t.colorScheme.primary),
        child: Text(title,
            style:
                t.textTheme.bodyLarge!.copyWith(color: t.colorScheme.surface)));
  }
}

class InputTextQR extends StatefulWidget {
  final String initialValue;
  final String? label;
  final void Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final int? lines;
  final List<Widget> Function(BuildContext context,
      {Function(String) onChanged})? buttonsBuilder;

  InputTextQR(this.initialValue,
      {super.key,
      this.label,
      this.onChanged,
      this.validator,
      this.lines,
      this.buttonsBuilder});

  @override
  State<StatefulWidget> createState() => InputTextQRState();
}

class InputTextQRState extends State<InputTextQR> {
  final fieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<String>, String>>();
  late final controller = TextEditingController(text: widget.initialValue);

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
      key: fieldKey,
      name: 'text',
      initialValue: widget.initialValue,
      validator: widget.validator,
      onChanged: widget.onChanged,
      builder: (field) {
        final buttons = widget.buttonsBuilder?.call(
              context,
              onChanged: (v) => _onChanged(v, field),
            ) ??
            [];
        // print('FV ${widget.initialValue} ${field.value}');
        return Row(children: [
          Expanded(
            child: TextFormField(
              controller: controller,
              minLines: widget.lines,
              maxLines: widget.lines,
              decoration: InputDecoration(
                label: widget.label?.let((label) => Text(label)),
                errorText: field.errorText,
              ),
              onChanged: (v) => field.didChange(v),
            ),
          ),
          Container(
            width: 44,
            child: Column(children: [
              IconButton(
                onPressed: () => qr(context, field),
                icon: Icon(Icons.qr_code),
              ),
              Gap(8),
              ...buttons,
            ]),
          ),
        ]);
      },
    );
  }

  qr(BuildContext context, FormFieldState<String> field) async {
    final text = await scanQRCode(context, validator: widget.validator);
    _onChanged(text, field);
  }

  _onChanged(String v, FormFieldState<String> field) {
    controller.text = v;
    field.didChange(v);
  }

  setValue(String v) {
    _onChanged(v, fieldKey.currentState!);
  }
}

class PoolSelection extends StatefulWidget {
  final PoolBalance balances;
  final void Function(int? pools)? onChanged;
  final int initialValue;
  PoolSelection(this.initialValue,
      {super.key, required this.balances, this.onChanged});
  @override
  State<StatefulWidget> createState() => PoolSelectionState();
}

class PoolSelectionState extends State<PoolSelection> {
  final fieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<Set<int>>, Set<int>>>();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final txtStyle = t.textTheme.labelLarge!;

    final initialPools = PoolBitSet.toSet(widget.initialValue);

    return FormBuilderField(
      key: fieldKey,
      name: 'pool_select',
      initialValue: initialPools.toSet(),
      onChanged: (v) => widget.onChanged?.call(PoolBitSet.fromSet(v!)),
      builder: (field) => SegmentedButton<int>(
        segments: [
          ButtonSegment(
              value: 0,
              label: Text(
                amountToString(widget.balances.transparent),
                style: txtStyle.apply(color: Colors.red),
              )),
          ButtonSegment(
              value: 1,
              label: Text(
                amountToString(widget.balances.sapling),
                style: txtStyle.apply(color: Colors.orange),
              )),
          if (aa.hasUA)
            ButtonSegment(
                value: 2,
                label: Text(
                  amountToString(widget.balances.orchard),
                  style: txtStyle.apply(color: Colors.green),
                )),
        ],
        selected: field.value!,
        onSelectionChanged: (v) => field.didChange(v),
        multiSelectionEnabled: true,
        showSelectedIcon: false,
      ),
    );
  }

  void setPools(int p) {
    fieldKey.currentState!.didChange(PoolBitSet.toSet(p));
  }
}

enum AmountSource {
  None,
  External,
  Crypto,
  Fiat,
  Slider,
}

class AmountPicker extends StatefulWidget {
  final BigInt? spendable;
  final Amount initialAmount;
  final bool canDeductFee;
  final void Function(Amount?)? onChanged;
  final bool custom;
  AmountPicker(
    this.initialAmount, {
    super.key,
    this.spendable,
    this.canDeductFee = true,
    this.onChanged,
    this.custom = false,
  });
  @override
  State<StatefulWidget> createState() => AmountPickerState();
}

class AmountPickerState extends State<AmountPicker> {
  late final s = S.of(context);
  final fieldKey =
      GlobalKey<FormBuilderFieldState<FormBuilderField<Amount>, Amount>>();
  final formKey = GlobalKey<FormBuilderState>();
  double? fxRate;
  double _sliderValue = 0;
  late final amountController =
      TextEditingController(text: amountToString(widget.initialAmount.value));
  late final nformat = NumberFormat.decimalPatternDigits(
      locale: Platform.localeName,
      decimalDigits: decimalDigits(appSettings.fullPrec));
  late final fiatController = TextEditingController(text: nformat.format(0.0));

  @override
  void initState() {
    super.initState();
    Future(updateFxRate);
  }

  @override
  Widget build(BuildContext context) {
    final customSendSettings = appSettings.customSendSettings;
    final c = coins[aa.coin];
    final spendable = widget.spendable;
    return FormBuilderField<Amount>(
      key: fieldKey,
      name: 'amount_form',
      initialValue: widget.initialAmount,
      onChanged: widget.onChanged,
      validator: FormBuilderValidators.compose([
        (a) => a!.value <= BigInt.zero ? s.amountMustBePositive : null,
        if (spendable != null)
          (a) => a!.value > spendable ? s.notEnoughBalance : null,
      ]),
      builder: (field) {
        return FormBuilder(
          key: formKey,
          child: Column(
            children: [
              Gap(16),
              if (spendable != null)
                Text('${s.spendable}  ${amountToString(spendable)}'),
              Gap(8),
              Row(
                children: [
                  Expanded(
                    child: FormBuilderTextField(
                      name: 'amount',
                      decoration: InputDecoration(
                        label: Text(c.ticker),
                        errorText: field.errorText,
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      controller: amountController,
                      onChanged: (v0) {
                        final v = v0 == null || v0.isEmpty ? '0' : v0;
                        try {
                          final value = stringToAmount(v);
                          _update(field, value, AmountSource.Crypto);
                        } on FormatException {}
                      },
                    ),
                  ),
                  if (widget.canDeductFee &&
                      spendable != null &&
                      widget.custom &&
                      customSendSettings.max)
                    IconButton(
                      onPressed: () => _max(field),
                      icon: const Icon(Icons.maximize),
                    ),
                ],
              ),
              if (!widget.custom || customSendSettings.amountCurrency)
                FormBuilderTextField(
                  name: 'fiat',
                  decoration:
                      InputDecoration(label: Text(appSettings.currency)),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  enabled: fxRate != null,
                  controller: fiatController,
                  onChanged: (v0) {
                    final v = v0 == null || v0.isEmpty ? '0' : v0;
                    try {
                      final fiat = nformat.parse(v).toDouble();
                      final zec = fiat / fxRate!;
                      final value = BigInt.from((zec * zatsPerZec).toInt());
                      _update(field, value, AmountSource.Fiat);
                    } on FormatException {}
                  },
                ),
              if (spendable != null &&
                  widget.custom &&
                  customSendSettings.amountSlider)
                Slider(
                  value: _sliderValue,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  onChanged: (v) {
                    final value = spendable.toDouble() * v ~/ 100;
                    _sliderValue = v;
                    _update(field, BigInt.from(value), AmountSource.Slider);
                  },
                ),
              if (widget.canDeductFee &&
                  widget.custom &&
                  customSendSettings.deductFee)
                FormBuilderSwitch(
                    name: 'deduct_fee',
                    initialValue: widget.initialAmount.deductFee,
                    title: Text(s.deductFee),
                    onChanged: (v) {
                      final a = field.value!.copyWith(deductFee: v!);
                      field.didChange(a);
                    }),
            ],
          ),
        );
      },
    );
  }

  AmountSource? _source;

  _update(FormFieldState<Amount> field, BigInt v, AmountSource source) {
    if (_source != null) return;
    var amount = field.value ?? Amount(value: BigInt.zero, deductFee: false);
    try {
      _source = source;
      amount = amount.copyWith(value: v);
      if (source != AmountSource.Crypto) {
        amountController.text = amountToString(amount.value);
      }
      final spendable = widget.spendable;
      if (source != AmountSource.Fiat) {
        fxRate?.let((fx) {
          final fiat = BigInt.from(v.toDouble() * fx);
          fiatController.text = amountToString(fiat);
        });
      }
      if (source != AmountSource.Slider &&
          spendable != null &&
          spendable > BigInt.zero) {
        final p = amount.value / spendable * 100;
        _sliderValue = p.clamp(0.0, 100.0);
      }
      field.didChange(amount);
    } finally {
      _source = null;
    }
    setState(() {});
  }

  _max(FormFieldState<Amount> field) {
    final value = widget.spendable!;
    formKey.currentState!.fields['deduct_fee']?.setValue(true);
    _update(field, value, AmountSource.External);
  }

  void setAmount(BigInt amount) {
    final field = fieldKey.currentState!;
    _update(field, amount, AmountSource.External);
  }

  Future<void> updateFxRate() async {
    final c = coins[aa.coin];
    fxRate = await getFxRate(c.currency, appSettings.currency);
    setState(() {});
  }
}

class InputMemo extends StatefulWidget {
  final ParsedMemo memo;
  final void Function(ParsedMemo?)? onChanged;
  final bool custom;

  const InputMemo(this.memo, {super.key, this.onChanged, this.custom = false});

  @override
  State<StatefulWidget> createState() => InputMemoState();
}

class InputMemoState extends State<InputMemo> {
  final fieldKey = GlobalKey<
      FormBuilderFieldState<FormBuilderField<ParsedMemo>, ParsedMemo>>();
  final formKey = GlobalKey<FormBuilderState>();
  late ParsedMemo value = ParsedMemo(
      reply: widget.memo.reply,
      subject: widget.memo.subject,
      memo: widget.memo.memo);
  late final subjectController =
      TextEditingController(text: widget.memo.subject);
  late final memoController = TextEditingController(text: widget.memo.memo);

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final customSendSettings = appSettings.customSendSettings;
    return FormBuilderField<ParsedMemo>(
        key: fieldKey,
        name: 'memo',
        initialValue: value,
        validator: (ParsedMemo? v) {
          if (v == null) return null;
          if (utf8.encode(v.memo).length > 511) return s.memoTooLong;
          return null;
        },
        onChanged: widget.onChanged,
        builder: (field) {
          return FormBuilder(
            key: formKey,
            child: Column(
              children: [
                if (widget.custom && customSendSettings.replyAddress)
                  FormBuilderSwitch(
                    name: 'reply',
                    title: Text(s.includeReplyTo),
                    initialValue: value.reply,
                    onChanged: (v) {
                      final uv = field.value!.copyWith(reply: v!);
                      field.didChange(uv);
                    },
                  ),
                if (widget.custom && customSendSettings.memoSubject)
                  FormBuilderTextField(
                    name: 'subject',
                    controller: subjectController,
                    decoration: InputDecoration(label: Text(s.subject)),
                    enableSuggestions: true,
                    onChanged: (v) {
                      final uv = field.value!.copyWith(subject: v!);
                      field.didChange(uv);
                    },
                  ),
                FormBuilderTextField(
                  name: 'body',
                  controller: memoController,
                  decoration: InputDecoration(label: Text(s.memo)),
                  maxLines: 10,
                  enableSuggestions: true,
                  onChanged: (v) {
                    final uv = field.value!.copyWith(memo: v!);
                    field.didChange(uv);
                  },
                )
              ],
            ),
          );
        });
  }

  void setMemoBody(String body) {
    final m = ParsedMemo(reply: false, subject: '', memo: body);
    formKey.currentState!.fields['reply']?.setValue(false);
    subjectController.text = m.subject;
    memoController.text = m.memo;
    fieldKey.currentState!.didChange(m);
  }
}

class Jumbotron extends StatelessWidget {
  final Severity severity;
  final String? title;
  final String message;
  const Jumbotron(this.message,
      {super.key, this.title, this.severity = Severity.Info});

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final cs = t.colorScheme;
    final Color color;
    switch (severity) {
      case Severity.Error:
        color = Colors.red;
        break;
      case Severity.Warning:
        color = Colors.orange;
        break;
      default:
        color = cs.primary;
        break;
    }
    return Stack(
      children: [
        Align(
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsetsDirectional.all(15),
            decoration: BoxDecoration(
                color: cs.primary,
                border: Border.all(color: color, width: 4),
                borderRadius: BorderRadius.all(Radius.circular(32))),
            child: SelectableText(message,
                style:
                    t.textTheme.headlineMedium!.copyWith(color: cs.onPrimary)),
          ),
        ),
        if (title != null)
          Align(
            alignment: Alignment.topCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: color, width: 4), color: color),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(title!, style: TextStyle(color: cs.onPrimary))),
            ),
          )
      ],
    );
  }
}

enum Severity {
  Info,
  Warning,
  Error,
}

class AnimatedQR extends StatefulWidget {
  final String title;
  final String caption;
  final String data;
  final List<String> chunks;

  AnimatedQR.init(String title, String caption, String data)
      : this(
            title,
            caption,
            data,
            splitData(
                id: DateTime.now().millisecondsSinceEpoch ~/ 1000,
                data: ZLibCodec().encode(utf8.encode(data))));

  AnimatedQR(this.title, this.caption, this.data, this.chunks);

  @override
  State<StatefulWidget> createState() => _AnimatedQRState();
}

class _AnimatedQRState extends State<AnimatedQR> {
  var index = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = new Timer.periodic(Duration(seconds: 3), (Timer timer) {
      setState(() {
        index += 1;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final idx = index % widget.chunks.length;
    final mq = MediaQuery.of(context).size;
    final qrSize = min(mq.height, mq.width) * 0.8;
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QrImageView(
            key: ValueKey(idx),
            data: widget.chunks[idx],
            size: qrSize,
            backgroundColor: Colors.white),
        const Gap(8),
        Text(widget.caption, style: theme.textTheme.titleMedium),
      ],
    ));
  }
}

class HorizontalBarChart extends StatelessWidget {
  final List<double> values;
  final double height;

  const HorizontalBarChart(this.values, {super.key, this.height = 32});

  @override
  Widget build(BuildContext context) {
    final palette = getPalette(Theme.of(context).primaryColor, values.length);

    final sum = values.fold<double>(0, ((acc, v) => acc + v));
    final stacks = values.asMap().entries.map((e) {
      final i = e.key;
      final color = palette[i];
      final v = NumberFormat.compact().format(values[i]);
      final flex = sum != 0 ? max((values[i] / sum * 100).round(), 1) : 1;
      return Flexible(
          flex: flex,
          child: Container(
              color: color,
              height: height,
              child: Center(
                  child: Text(v,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)))));
    }).toList();

    return IntrinsicHeight(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch, children: stacks));
  }
}

class MessageContentWidget extends StatelessWidget {
  final String address;
  final ParsedMemo message;

  const MessageContentWidget(this.address, this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final addressWidget =
        Text(centerTrim(address), style: theme.textTheme.labelMedium);
    return Column(children: [
      addressWidget,
      if (message.subject.isNotEmpty)
        Text(message.subject, style: theme.textTheme.titleSmall),
      Text(message.memo, style: theme.textTheme.bodySmall),
    ]);
  }
}

class SwapAmountWidget extends StatefulWidget {
  final String name;
  final SwapAmount initialValue;
  final bool readOnly;
  final List<String>? currencies;
  final void Function(SwapAmount)? onChanged;

  const SwapAmountWidget({
    super.key,
    required this.name,
    required this.initialValue,
    this.readOnly = false,
    this.currencies,
    this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => SwapAmountState();
}

class SwapAmountState extends State<SwapAmountWidget> {
  var formKey = GlobalKey<FormBuilderState>();
  var fieldKey = GlobalKey<
      FormBuilderFieldState<FormBuilderField<SwapAmount>, SwapAmount>>();

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final items = widget.currencies
        ?.map((c) => DropdownMenuItem(value: c, child: Text(c)))
        .toList();

    logger.d('build -> ${widget.initialValue}');

    return FormBuilderField<SwapAmount>(
      key: fieldKey,
      name: widget.name,
      initialValue: widget.initialValue,
      onChanged: (v) => widget.onChanged?.call(v!),
      builder: (FormFieldState<SwapAmount> field) {
        return FormBuilder(
          key: formKey,
          child: SizedBox(
            height: 100,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  SizedBox(
                      width: 180,
                      child: FormBuilderTextField(
                        name: 'amount',
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          errorText: field.errorText,
                        ),
                        readOnly: widget.readOnly,
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.required(),
                          FormBuilderValidators.numeric(),
                        ]),
                        initialValue: value.amount.toString(),
                        onChanged: (v) {
                          field.didChange(value.copyWith(amount: v!));
                        },
                      )),
                  items != null
                      ? SizedBox(
                          width: 140,
                          child: FormBuilderDropdown(
                            name: 'currency',
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            items: items,
                            initialValue: value.currency,
                            onChanged: (v) =>
                                field.didChange(value.copyWith(currency: v!)),
                          ))
                      : Text(value.currency, style: t.textTheme.bodyLarge),
                ]),
          ),
        );
      },
    );
  }

  void update(SwapAmount value) {
    logger.d('update $value');
    final f = formKey.currentState!;
    f.fields['amount']!.didChange(value.amount);
    f.fields['currency']!.didChange(value.currency);
  }

  bool validate() {
    return formKey.currentState!.validate();
  }

  void invalidate(String error) {
    formKey.currentState!.fields['amount']!.invalidate(error);
  }

  void resetAmount() {
    logger.d('reset amount');
    formKey.currentState!.fields['amount']!.didChange('0');
  }

  SwapAmount get value => fieldKey.currentState!.value!;
}

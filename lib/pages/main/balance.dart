import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:zwallet/main.dart';

import '../../appsettings.dart';
import '../../accounts.dart';
import '../../coin/coins.dart';
import '../../store.dart';
import '../../utils.dart';
import '../../types.dart';

class BalanceWidget extends StatefulWidget {
  final int mode;
  final void Function()? onMode;
  const BalanceWidget(this.mode, {super.key, this.onMode});

  @override
  State<StatefulWidget> createState() => BalanceState();
}

class BalanceState extends State<BalanceWidget> {
  @override
  void initState() {
    super.initState();
    Future(marketPrice.update);
  }

  String _formatFiat(double x) =>
      decimalFormat(x, 2, symbol: appSettings.currency);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final mode = widget.mode;

    final color = mode == 0
        ? t.colorScheme.secondary
        : mode == 1
            ? t.colorScheme.primaryContainer
            : t.colorScheme.primary;

    return Observer(builder: (context) {
      aaSequence.settingsSeqno;
      aa.height;
      aa.currency;
      appStore.flat;

      final hideBalance = hide(appStore.flat);
      if (hideBalance) return SizedBox();

      final c = coins[aa.coin];
      final balHi = decimalFormat((balance.toInt() ~/ 100000) / 1000.0, 3);
      final balLo = (balance.toInt() % 100000).toString().padLeft(5, '0');
      final fiat = marketPrice.price;
      final balFiat = fiat?.let((fx) => balance.toDouble() * fx / zatsPerZec);
      final txtFiat = fiat?.let(_formatFiat);
      final txtBalFiat = balFiat?.let(_formatFiat);

      final balanceWidget = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(c.symbol, style: t.textTheme.bodyLarge),
          Text(balHi, style: t.textTheme.displayMedium?.apply(color: color)),
          Text(balLo, style: t.textTheme.bodyMedium)
        ],
      );
      final ob = otherBalance;

      return GestureDetector(
        onTap: widget.onMode,
        child: Column(
          children: [
            ob > BigInt.zero
                ? InputDecorator(
                    decoration: InputDecoration(
                        label: Text('+ ${amountToString(ob)}'),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: t.primaryColor),
                            borderRadius: BorderRadius.circular(8))),
                    child: balanceWidget)
                : balanceWidget,
            Padding(padding: EdgeInsets.all(4)),
            if (txtBalFiat != null)
              Text(txtBalFiat, style: t.textTheme.titleLarge),
            if (txtFiat != null) Text('1 ${c.ticker} = $txtFiat'),
          ],
        ),
      );
    });
  }

  bool hide(bool flat) {
    switch (appSettings.autoHide) {
      case 0:
        return true;
      case 1:
        return flat;
      default:
        return false;
    }
  }

  BigInt get balance {
    switch (widget.mode) {
      case 0:
      case 4:
        return totalBalance;
      case 1:
        return aa.poolBalances.transparent;
      case 2:
        return aa.poolBalances.sapling;
      case 3:
        return aa.poolBalances.orchard;
    }
    throw 'Unreachable';
  }

  BigInt get totalBalance => aa.poolBalances.total;

  BigInt get otherBalance => totalBalance - balance;
}

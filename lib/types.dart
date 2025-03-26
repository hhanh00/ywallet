import 'package:reflectable/reflectable.dart';
import 'main.dart';
import 'src/rust/types.dart';
import 'utils.dart';

abstract class HasHeight {
  int height = 0;
}

class Reflector extends Reflectable {
  const Reflector() : super(instanceInvokeCapability);
}

const reflector = const Reflector();

@reflector
class Note extends HasHeight {
  int id;
  int height;
  int? confirmations;
  DateTime timestamp;
  double value;
  bool orchard;
  bool excluded;
  bool selected;

  factory Note.from(int? latestHeight, int id, int height, DateTime timestamp,
      double value, bool orchard, bool excluded, bool selected) {
    final confirmations = latestHeight?.let((h) => h - height + 1);
    return Note(id, height, confirmations, timestamp, value, orchard, excluded,
        selected);
  }
  factory Note.fromShieldedNote(ShieldedNote n) => Note(n.id, n.height, 0,
      toDateTime(n.timestamp), n.value.toDouble() / ZECUNIT, n.orchard, n.excluded, false);

  Note(this.id, this.height, this.confirmations, this.timestamp, this.value,
      this.orchard, this.excluded, this.selected);

  Note get invertExcluded => Note(id, height, confirmations, timestamp, value,
      orchard, !excluded, selected);

  Note clone() => Note(
      id, height, confirmations, timestamp, value, orchard, excluded, selected);
}

@reflector
class Tx extends HasHeight {
  int id;
  int height;
  int? confirmations;
  DateTime timestamp;
  String txId;
  String fullTxId;
  double value;
  String? address;
  String? contact;
  String? memo;
  List<TxMemo> memos;

  factory Tx.from(
    int? latestHeight,
    int id,
    int height,
    DateTime timestamp,
    String txid,
    String fullTxId,
    double value,
    String? address,
    String? contact,
    String? memo,
    List<TxMemo> memos,
  ) {
    final confirmations = latestHeight?.let((h) => h - height + 1);
    final memos2 =
        memos.map((m) => TxMemo(address: m.address, memo: m.memo, direction: 0)).toList();
    return Tx(id, height, confirmations, timestamp, txid, fullTxId, value,
        address, contact, memo, memos2);
  }

  Tx(
      this.id,
      this.height,
      this.confirmations,
      this.timestamp,
      this.txId,
      this.fullTxId,
      this.value,
      this.address,
      this.contact,
      this.memo,
      this.memos);
}

class ZMessage extends HasHeight {
  final int id;
  final int txId;
  final bool incoming;
  final String? fromAddress;
  final String? sender;
  final String recipient;
  final String subject;
  final String body;
  final DateTime timestamp;
  final int height;
  final bool read;

  ZMessage(
      this.id,
      this.txId,
      this.incoming,
      this.fromAddress,
      this.sender,
      this.recipient,
      this.subject,
      this.body,
      this.timestamp,
      this.height,
      this.read);

  ZMessage withRead(bool v) {
    return ZMessage(id, txId, incoming, fromAddress, sender, recipient, subject,
        body, timestamp, height, v);
  }

  String fromto() => incoming
      ? "\u{21e6} ${sender != null ? centerTrim(sender!) : ''}"
      : "\u{21e8} ${centerTrim(recipient)}";
}

class PnL {
  final DateTime timestamp;
  final double price;
  final double amount;
  final double realized;
  final double unrealized;

  PnL(this.timestamp, this.price, this.amount, this.realized, this.unrealized);

  @override
  String toString() {
    return "$timestamp $price $amount $realized $unrealized";
  }
}

extension PoolBalanceExtension on PoolBalance {
  BigInt get total => transparent + sapling + orchard;
}

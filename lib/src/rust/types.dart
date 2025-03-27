// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'types.freezed.dart';

@freezed
class Amount with _$Amount {
  const factory Amount({
    required BigInt value,
    required bool deductFee,
  }) = _Amount;
}

@freezed
class Backup with _$Backup {
  const factory Backup({
    required String name,
    String? seed,
    required int index,
    String? sk,
    required String fvk,
    required String uvk,
    String? tsk,
    required bool saved,
  }) = _Backup;
}

@freezed
class BlockHeight with _$BlockHeight {
  const factory BlockHeight({
    required int height,
    required int timestamp,
  }) = _BlockHeight;
}

@freezed
class Contact with _$Contact {
  const factory Contact({
    required int id,
    required String name,
    required String address,
  }) = _Contact;
}

@freezed
class Fee with _$Fee {
  const factory Fee({
    required int scheme,
    required BigInt fee,
  }) = _Fee;
}

@freezed
class ParsedMemo with _$ParsedMemo {
  const factory ParsedMemo({
    required bool reply,
    required String subject,
    required String memo,
  }) = _ParsedMemo;
}

@freezed
class PaymentURI with _$PaymentURI {
  const factory PaymentURI({
    required String address,
    required BigInt amount,
    required String memo,
  }) = _PaymentURI;
}

@freezed
class PoolBalance with _$PoolBalance {
  const factory PoolBalance({
    required BigInt transparent,
    required BigInt sapling,
    required BigInt orchard,
  }) = _PoolBalance;
}

@freezed
class Progress with _$Progress {
  const factory Progress({
    required int timestamp,
    required int trialDecryptions,
    required int height,
    required int downloaded,
  }) = _Progress;
}

@freezed
class Quote with _$Quote {
  const factory Quote({
    required int timestamp,
    required double price,
  }) = _Quote;
}

@freezed
class Recipient with _$Recipient {
  const factory Recipient({
    required String address,
    required int pools,
    required BigInt amount,
    required ParsedMemo message,
  }) = _Recipient;
}

@freezed
class SendContext with _$SendContext {
  const factory SendContext({
    required String address,
    required int pools,
    required BigInt amount,
    required bool receiverFee,
    required ParsedMemo memo,
  }) = _SendContext;
}

@freezed
class ShieldedNote with _$ShieldedNote {
  const factory ShieldedNote({
    required int id,
    required int height,
    required BigInt value,
    required int timestamp,
    required bool orchard,
    required bool excluded,
    required bool spent,
  }) = _ShieldedNote;
}

@freezed
class Spending with _$Spending {
  const factory Spending({
    required String recipient,
    required PlatformInt64 amount,
  }) = _Spending;
}

@freezed
class SwapAmount with _$SwapAmount {
  const factory SwapAmount({
    required String amount,
    required String currency,
  }) = _SwapAmount;
}

@freezed
class TxMemo with _$TxMemo {
  const factory TxMemo({
    required int direction,
    required String address,
    required String memo,
  }) = _TxMemo;
}

@freezed
class TxTimeValue with _$TxTimeValue {
  const factory TxTimeValue({
    required int timestamp,
    required PlatformInt64 value,
  }) = _TxTimeValue;
}

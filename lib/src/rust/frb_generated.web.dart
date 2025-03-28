// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/simple.dart';
import 'api/warp.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';
import 'types.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  RustStreamSink<Progress> dco_decode_StreamSink_progress_Sse(dynamic raw);

  @protected
  RustStreamSink<int> dco_decode_StreamSink_u_32_Sse(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  Amount dco_decode_amount(dynamic raw);

  @protected
  Backup dco_decode_backup(dynamic raw);

  @protected
  BlockHeight dco_decode_block_height(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  Amount dco_decode_box_autoadd_amount(dynamic raw);

  @protected
  Contact dco_decode_box_autoadd_contact(dynamic raw);

  @protected
  Fee dco_decode_box_autoadd_fee(dynamic raw);

  @protected
  KeyType dco_decode_box_autoadd_key_type(dynamic raw);

  @protected
  ParsedMemo dco_decode_box_autoadd_parsed_memo(dynamic raw);

  @protected
  PaymentURI dco_decode_box_autoadd_payment_uri(dynamic raw);

  @protected
  PoolBalance dco_decode_box_autoadd_pool_balance(dynamic raw);

  @protected
  Progress dco_decode_box_autoadd_progress(dynamic raw);

  @protected
  Quote dco_decode_box_autoadd_quote(dynamic raw);

  @protected
  RaptorQResult dco_decode_box_autoadd_raptor_q_result(dynamic raw);

  @protected
  Recipient dco_decode_box_autoadd_recipient(dynamic raw);

  @protected
  SeedInfo dco_decode_box_autoadd_seed_info(dynamic raw);

  @protected
  SendContext dco_decode_box_autoadd_send_context(dynamic raw);

  @protected
  ShieldedNote dco_decode_box_autoadd_shielded_note(dynamic raw);

  @protected
  Spending dco_decode_box_autoadd_spending(dynamic raw);

  @protected
  SwapAmount dco_decode_box_autoadd_swap_amount(dynamic raw);

  @protected
  SwapQuote dco_decode_box_autoadd_swap_quote(dynamic raw);

  @protected
  SwapRequest dco_decode_box_autoadd_swap_request(dynamic raw);

  @protected
  TxMemo dco_decode_box_autoadd_tx_memo(dynamic raw);

  @protected
  TxTimeValue dco_decode_box_autoadd_tx_time_value(dynamic raw);

  @protected
  int dco_decode_box_autoadd_u_32(dynamic raw);

  @protected
  Choice dco_decode_choice(dynamic raw);

  @protected
  Contact dco_decode_contact(dynamic raw);

  @protected
  Election dco_decode_election(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  Fee dco_decode_fee(dynamic raw);

  @protected
  PlatformInt64 dco_decode_i_64(dynamic raw);

  @protected
  KeyType dco_decode_key_type(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  List<Choice> dco_decode_list_choice(dynamic raw);

  @protected
  List<Contact> dco_decode_list_contact(dynamic raw);

  @protected
  List<int> dco_decode_list_prim_u_8_loose(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<Spending> dco_decode_list_spending(dynamic raw);

  @protected
  List<TxTimeValue> dco_decode_list_tx_time_value(dynamic raw);

  @protected
  List<Vote> dco_decode_list_vote(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  RaptorQResult? dco_decode_opt_box_autoadd_raptor_q_result(dynamic raw);

  @protected
  int? dco_decode_opt_box_autoadd_u_32(dynamic raw);

  @protected
  ParsedMemo dco_decode_parsed_memo(dynamic raw);

  @protected
  PaymentURI dco_decode_payment_uri(dynamic raw);

  @protected
  PoolBalance dco_decode_pool_balance(dynamic raw);

  @protected
  Progress dco_decode_progress(dynamic raw);

  @protected
  Quote dco_decode_quote(dynamic raw);

  @protected
  RaptorQResult dco_decode_raptor_q_result(dynamic raw);

  @protected
  Recipient dco_decode_recipient(dynamic raw);

  @protected
  SeedInfo dco_decode_seed_info(dynamic raw);

  @protected
  SendContext dco_decode_send_context(dynamic raw);

  @protected
  ShieldedNote dco_decode_shielded_note(dynamic raw);

  @protected
  Spending dco_decode_spending(dynamic raw);

  @protected
  SwapAmount dco_decode_swap_amount(dynamic raw);

  @protected
  SwapQuote dco_decode_swap_quote(dynamic raw);

  @protected
  SwapRequest dco_decode_swap_request(dynamic raw);

  @protected
  TxMemo dco_decode_tx_memo(dynamic raw);

  @protected
  TxTimeValue dco_decode_tx_time_value(dynamic raw);

  @protected
  int dco_decode_u_32(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  Vote dco_decode_vote(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  RustStreamSink<Progress> sse_decode_StreamSink_progress_Sse(
      SseDeserializer deserializer);

  @protected
  RustStreamSink<int> sse_decode_StreamSink_u_32_Sse(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  Amount sse_decode_amount(SseDeserializer deserializer);

  @protected
  Backup sse_decode_backup(SseDeserializer deserializer);

  @protected
  BlockHeight sse_decode_block_height(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  Amount sse_decode_box_autoadd_amount(SseDeserializer deserializer);

  @protected
  Contact sse_decode_box_autoadd_contact(SseDeserializer deserializer);

  @protected
  Fee sse_decode_box_autoadd_fee(SseDeserializer deserializer);

  @protected
  KeyType sse_decode_box_autoadd_key_type(SseDeserializer deserializer);

  @protected
  ParsedMemo sse_decode_box_autoadd_parsed_memo(SseDeserializer deserializer);

  @protected
  PaymentURI sse_decode_box_autoadd_payment_uri(SseDeserializer deserializer);

  @protected
  PoolBalance sse_decode_box_autoadd_pool_balance(SseDeserializer deserializer);

  @protected
  Progress sse_decode_box_autoadd_progress(SseDeserializer deserializer);

  @protected
  Quote sse_decode_box_autoadd_quote(SseDeserializer deserializer);

  @protected
  RaptorQResult sse_decode_box_autoadd_raptor_q_result(
      SseDeserializer deserializer);

  @protected
  Recipient sse_decode_box_autoadd_recipient(SseDeserializer deserializer);

  @protected
  SeedInfo sse_decode_box_autoadd_seed_info(SseDeserializer deserializer);

  @protected
  SendContext sse_decode_box_autoadd_send_context(SseDeserializer deserializer);

  @protected
  ShieldedNote sse_decode_box_autoadd_shielded_note(
      SseDeserializer deserializer);

  @protected
  Spending sse_decode_box_autoadd_spending(SseDeserializer deserializer);

  @protected
  SwapAmount sse_decode_box_autoadd_swap_amount(SseDeserializer deserializer);

  @protected
  SwapQuote sse_decode_box_autoadd_swap_quote(SseDeserializer deserializer);

  @protected
  SwapRequest sse_decode_box_autoadd_swap_request(SseDeserializer deserializer);

  @protected
  TxMemo sse_decode_box_autoadd_tx_memo(SseDeserializer deserializer);

  @protected
  TxTimeValue sse_decode_box_autoadd_tx_time_value(
      SseDeserializer deserializer);

  @protected
  int sse_decode_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  Choice sse_decode_choice(SseDeserializer deserializer);

  @protected
  Contact sse_decode_contact(SseDeserializer deserializer);

  @protected
  Election sse_decode_election(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  Fee sse_decode_fee(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_i_64(SseDeserializer deserializer);

  @protected
  KeyType sse_decode_key_type(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  List<Choice> sse_decode_list_choice(SseDeserializer deserializer);

  @protected
  List<Contact> sse_decode_list_contact(SseDeserializer deserializer);

  @protected
  List<int> sse_decode_list_prim_u_8_loose(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<Spending> sse_decode_list_spending(SseDeserializer deserializer);

  @protected
  List<TxTimeValue> sse_decode_list_tx_time_value(SseDeserializer deserializer);

  @protected
  List<Vote> sse_decode_list_vote(SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  RaptorQResult? sse_decode_opt_box_autoadd_raptor_q_result(
      SseDeserializer deserializer);

  @protected
  int? sse_decode_opt_box_autoadd_u_32(SseDeserializer deserializer);

  @protected
  ParsedMemo sse_decode_parsed_memo(SseDeserializer deserializer);

  @protected
  PaymentURI sse_decode_payment_uri(SseDeserializer deserializer);

  @protected
  PoolBalance sse_decode_pool_balance(SseDeserializer deserializer);

  @protected
  Progress sse_decode_progress(SseDeserializer deserializer);

  @protected
  Quote sse_decode_quote(SseDeserializer deserializer);

  @protected
  RaptorQResult sse_decode_raptor_q_result(SseDeserializer deserializer);

  @protected
  Recipient sse_decode_recipient(SseDeserializer deserializer);

  @protected
  SeedInfo sse_decode_seed_info(SseDeserializer deserializer);

  @protected
  SendContext sse_decode_send_context(SseDeserializer deserializer);

  @protected
  ShieldedNote sse_decode_shielded_note(SseDeserializer deserializer);

  @protected
  Spending sse_decode_spending(SseDeserializer deserializer);

  @protected
  SwapAmount sse_decode_swap_amount(SseDeserializer deserializer);

  @protected
  SwapQuote sse_decode_swap_quote(SseDeserializer deserializer);

  @protected
  SwapRequest sse_decode_swap_request(SseDeserializer deserializer);

  @protected
  TxMemo sse_decode_tx_memo(SseDeserializer deserializer);

  @protected
  TxTimeValue sse_decode_tx_time_value(SseDeserializer deserializer);

  @protected
  int sse_decode_u_32(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  Vote sse_decode_vote(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_progress_Sse(
      RustStreamSink<Progress> self, SseSerializer serializer);

  @protected
  void sse_encode_StreamSink_u_32_Sse(
      RustStreamSink<int> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_amount(Amount self, SseSerializer serializer);

  @protected
  void sse_encode_backup(Backup self, SseSerializer serializer);

  @protected
  void sse_encode_block_height(BlockHeight self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_amount(Amount self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_contact(Contact self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_fee(Fee self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_key_type(KeyType self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_parsed_memo(
      ParsedMemo self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_payment_uri(
      PaymentURI self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_pool_balance(
      PoolBalance self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_progress(Progress self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_quote(Quote self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_raptor_q_result(
      RaptorQResult self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_recipient(
      Recipient self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_seed_info(
      SeedInfo self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_send_context(
      SendContext self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_shielded_note(
      ShieldedNote self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_spending(Spending self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_swap_amount(
      SwapAmount self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_swap_quote(
      SwapQuote self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_swap_request(
      SwapRequest self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tx_memo(TxMemo self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_tx_time_value(
      TxTimeValue self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_choice(Choice self, SseSerializer serializer);

  @protected
  void sse_encode_contact(Contact self, SseSerializer serializer);

  @protected
  void sse_encode_election(Election self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_fee(Fee self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_key_type(KeyType self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_choice(List<Choice> self, SseSerializer serializer);

  @protected
  void sse_encode_list_contact(List<Contact> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_loose(List<int> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_spending(List<Spending> self, SseSerializer serializer);

  @protected
  void sse_encode_list_tx_time_value(
      List<TxTimeValue> self, SseSerializer serializer);

  @protected
  void sse_encode_list_vote(List<Vote> self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_raptor_q_result(
      RaptorQResult? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_32(int? self, SseSerializer serializer);

  @protected
  void sse_encode_parsed_memo(ParsedMemo self, SseSerializer serializer);

  @protected
  void sse_encode_payment_uri(PaymentURI self, SseSerializer serializer);

  @protected
  void sse_encode_pool_balance(PoolBalance self, SseSerializer serializer);

  @protected
  void sse_encode_progress(Progress self, SseSerializer serializer);

  @protected
  void sse_encode_quote(Quote self, SseSerializer serializer);

  @protected
  void sse_encode_raptor_q_result(RaptorQResult self, SseSerializer serializer);

  @protected
  void sse_encode_recipient(Recipient self, SseSerializer serializer);

  @protected
  void sse_encode_seed_info(SeedInfo self, SseSerializer serializer);

  @protected
  void sse_encode_send_context(SendContext self, SseSerializer serializer);

  @protected
  void sse_encode_shielded_note(ShieldedNote self, SseSerializer serializer);

  @protected
  void sse_encode_spending(Spending self, SseSerializer serializer);

  @protected
  void sse_encode_swap_amount(SwapAmount self, SseSerializer serializer);

  @protected
  void sse_encode_swap_quote(SwapQuote self, SseSerializer serializer);

  @protected
  void sse_encode_swap_request(SwapRequest self, SseSerializer serializer);

  @protected
  void sse_encode_tx_memo(TxMemo self, SseSerializer serializer);

  @protected
  void sse_encode_tx_time_value(TxTimeValue self, SseSerializer serializer);

  @protected
  void sse_encode_u_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_vote(Vote self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {}

// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.9.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../types.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

bool checkAccount({required int coin, required int id}) =>
    RustLib.instance.api.crateApiWarpCheckAccount(coin: coin, id: id);

int getFirstAccount({required int coin}) =>
    RustLib.instance.api.crateApiWarpGetFirstAccount(coin: coin);

PoolBalance getPoolBalances(
        {required int coin,
        required int id,
        required int confs,
        required bool unconfirmed}) =>
    RustLib.instance.api.crateApiWarpGetPoolBalances(
        coin: coin, id: id, confs: confs, unconfirmed: unconfirmed);

String getDiversifiedAddress(
        {required int coin,
        required int id,
        required int mask,
        required int time}) =>
    RustLib.instance.api.crateApiWarpGetDiversifiedAddress(
        coin: coin, id: id, mask: mask, time: time);

Future<List<Spending>> getSpendings(
        {required int coin, required int id, required int start}) =>
    RustLib.instance.api
        .crateApiWarpGetSpendings(coin: coin, id: id, start: start);

Future<List<TxTimeValue>> getPnlTxs(
        {required int coin, required int id, required int start}) =>
    RustLib.instance.api
        .crateApiWarpGetPnlTxs(coin: coin, id: id, start: start);

BlockHeight getDbHeight({required int coin}) =>
    RustLib.instance.api.crateApiWarpGetDbHeight(coin: coin);

Future<int> getLatestHeight({required int coin}) =>
    RustLib.instance.api.crateApiWarpGetLatestHeight(coin: coin);

Stream<Progress> warpSync(
        {required int coin,
        required int id,
        required bool incTxs,
        required int confs,
        required int maxActions}) =>
    RustLib.instance.api.crateApiWarpWarpSync(
        coin: coin,
        id: id,
        incTxs: incTxs,
        confs: confs,
        maxActions: maxActions);

Future<int> rescanFrom({required int coin, required int height}) =>
    RustLib.instance.api.crateApiWarpRescanFrom(coin: coin, height: height);

Future<List<Contact>> getContacts({required int coin}) =>
    RustLib.instance.api.crateApiWarpGetContacts(coin: coin);

void storeContact(
        {required int coin,
        required int id,
        required Contact contact,
        required bool dirty}) =>
    RustLib.instance.api.crateApiWarpStoreContact(
        coin: coin, id: id, contact: contact, dirty: dirty);

void initProver({required List<int> spend, required List<int> output}) =>
    RustLib.instance.api.crateApiWarpInitProver(spend: spend, output: output);

PaymentURI decodePaymentUri({required int coin, required String uri}) =>
    RustLib.instance.api.crateApiWarpDecodePaymentUri(coin: coin, uri: uri);

void setDbPasswd({required int coin, required String password}) =>
    RustLib.instance.api
        .crateApiWarpSetDbPasswd(coin: coin, password: password);

void initWallet({required int coin, required String path}) =>
    RustLib.instance.api.crateApiWarpInitWallet(coin: coin, path: path);

String? getProperty({required int coin, required String name}) =>
    RustLib.instance.api.crateApiWarpGetProperty(coin: coin, name: name);

void updateLwd({required int coin, required String url}) =>
    RustLib.instance.api.crateApiWarpUpdateLwd(coin: coin, url: url);

List<String> splitData({required int id, required List<int> data}) =>
    RustLib.instance.api.crateApiWarpSplitData(id: id, data: data);

KeyType getKeyType({required String key}) =>
    RustLib.instance.api.crateApiWarpGetKeyType(key: key);

Future<RaptorQResult?> mergeData({required List<int> drop}) =>
    RustLib.instance.api.crateApiWarpMergeData(drop: drop);

int? newAccount(
        {required int coin,
        required String name,
        required String key,
        required int index}) =>
    RustLib.instance.api
        .crateApiWarpNewAccount(coin: coin, name: name, key: key, index: index);

int countAccounts({required int coin}) =>
    RustLib.instance.api.crateApiWarpCountAccounts(coin: coin);

Future<void> skipToLastHeight({required int coin}) =>
    RustLib.instance.api.crateApiWarpSkipToLastHeight(coin: coin);

int getAvailableAddrs({required int coin, required int id}) =>
    RustLib.instance.api.crateApiWarpGetAvailableAddrs(coin: coin, id: id);

String getAddress({required int coin, required int id, required int ua}) =>
    RustLib.instance.api.crateApiWarpGetAddress(coin: coin, id: id, ua: ua);

String makePaymentUri(
        {required int coin,
        required String address,
        required BigInt amount,
        required String memo}) =>
    RustLib.instance.api.crateApiWarpMakePaymentUri(
        coin: coin, address: address, amount: amount, memo: memo);

Future<void> unzipBackup({required String backup, required String db}) =>
    RustLib.instance.api.crateApiWarpUnzipBackup(backup: backup, db: db);

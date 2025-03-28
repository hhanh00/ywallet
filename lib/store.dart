import 'dart:async';
import 'dart:math';

import 'package:mobx/mobx.dart';

import 'appsettings.dart';
import 'main.dart';
import 'src/rust/api/warp.dart';
import 'src/rust/types.dart';
import 'types.dart';
import 'utils.dart';
import 'accounts.dart';
import 'coin/coins.dart';
import 'generated/intl/messages.dart';

part 'store.g.dart';

var appStore = AppStore();

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  bool initialized = false;
  String dbPassword = '';

  @observable
  bool flat = false;
}

Timer? syncTimer;

Future<void> startAutoSync() async {
  if (syncTimer == null) {
    await syncStatus2.update();
    await syncStatus2.sync(false, auto: true);
    syncTimer = Timer.periodic(const Duration(seconds: 15), (timer) {
      syncStatus2.sync(false, auto: true);
      aa.updateDivisified();
    });
  }
}

var syncStatus2 = SyncStatus2();

class SyncStatus2 = _SyncStatus2 with _$SyncStatus2;

abstract class _SyncStatus2 with Store {
  int startSyncedHeight = 0;
  bool isRescan = false;
  ETA eta = ETA();

  @observable
  bool connected = true;

  @observable
  int syncedHeight = 0;

  @observable
  int? latestHeight;

  @observable
  DateTime? timestamp;

  @observable
  bool syncing = false;

  @observable
  bool paused = false;

  @observable
  int downloadedSize = 0;

  @observable
  int trialDecryptionCount = 0;

  @computed
  int get changed {
    connected;
    syncedHeight;
    latestHeight;
    syncing;
    paused;
    return DateTime.now().microsecondsSinceEpoch;
  }

  bool get isSynced {
    final sh = syncedHeight;
    final lh = latestHeight;
    return lh != null && sh >= lh;
  }

  int? get confirmHeight {
    final lh = latestHeight;
    if (lh == null) return null;
    final ch = lh - appSettings.anchorOffset;
    return max(ch, 0);
  }

  @action
  void reset() {
    isRescan = false;
    syncedHeight = getDbHeight(coin: aa.coin).height;
    syncing = false;
    paused = false;
  }

  @action
  Future<void> update() async {
    try {
      final lh = latestHeight;
      latestHeight = await getLatestHeight(coin: aa.coin);
      if (lh == null && latestHeight != null) await aa.update(latestHeight);
      connected = true;
    } on String catch (e) {
      logger.d(e);
      connected = false;
    }
    syncedHeight = getDbHeight(coin: aa.coin).height;
  }

  @action
  Future<void> sync(bool rescan, {bool auto = false}) async {
    logger.d('R/A/P/S $rescan $auto $paused $syncing');
    if (paused) return;
    if (syncing) return;
    try {
      await update();
      final lh = latestHeight;
      if (lh == null) return;
      // don't auto sync more than 1 month of data
      if (!rescan && auto && lh - syncedHeight > 30 * 24 * 60 * 4 / 5) {
        paused = true;
        return;
      }
      if (isSynced) return;
      syncing = true;
      isRescan = rescan;
      _updateSyncedHeight();
      startSyncedHeight = syncedHeight;
      eta.begin(latestHeight!);
      eta.checkpoint(syncedHeight, DateTime.now());

      final preBalance = AccountBalanceSnapshot(
          coin: aa.coin, id: aa.id, balance: aa.poolBalances.total.toInt());
      // This may take a long time
      final syncProgress = warpSync(
          coin: aa.coin,
          id: aa.id,
          incTxs: !appSettings.nogetTx,
          confs: appSettings.anchorOffset,
          maxActions: coinSettings.spamFilter ? 50 : 1000000); // TODO
      syncProgress.listen((p) {
        setProgress(p);
      });

      await aa.update(latestHeight);
      await contacts.fetchContacts();
      await marketPrice.update();
      final postBalance = AccountBalanceSnapshot(
          coin: aa.coin, id: aa.id, balance: aa.poolBalances.total.toInt());
      if (preBalance.sameAccount(postBalance) &&
          preBalance.balance != postBalance.balance) {
        final s = S.of(navigatorKey.currentContext!);
        final ticker = coins[aa.coin].ticker;
        if (preBalance.balance < postBalance.balance) {
          // final amount =
          //     amountToString2(postBalance.balance - preBalance.balance);
          // showLocalNotification(
          //   id: latestHeight!,
          //   title: s.incomingFunds,
          //   body: s.received(amount, ticker),
          // );
        } else {
          // final amount =
          //     amountToString2(preBalance.balance - postBalance.balance);
          // showLocalNotification(
          //   id: latestHeight!,
          //   title: s.paymentMade,
          //   body: s.spent(amount, ticker),
          // );
        }
      }
    } on String catch (e) {
      logger.d(e);
      // showSnackBar(e);
    } finally {
      syncing = false;
      eta.end();
    }
  }

  @action
  Future<void> rescan(int height) async {
    await rescanFrom(coin: aa.coin, height: height);
    _updateSyncedHeight();
    paused = false;
    await sync(true);
  }

  @action
  void setPause(bool v) {
    paused = v;
  }

  @action
  void setProgress(Progress progress) {
    trialDecryptionCount = progress.trialDecryptions;
    syncedHeight = progress.height;
    downloadedSize = progress.downloaded;
    if (progress.timestamp > 0)
      timestamp =
          DateTime.fromMillisecondsSinceEpoch(progress.timestamp * 1000);
    eta.checkpoint(syncedHeight, DateTime.now());
  }

  void _updateSyncedHeight() {
    final h = getDbHeight(coin: aa.coin);
    syncedHeight = h.height;
    timestamp = (h.timestamp != 0)
        ? DateTime.fromMillisecondsSinceEpoch(h.timestamp * 1000)
        : null;
  }
}

class ETA {
  int endHeight = 0;
  ETACheckpoint? start;
  ETACheckpoint? prev;
  ETACheckpoint? current;

  void begin(int height) {
    end();
    endHeight = height;
  }

  void end() {
    start = null;
    prev = null;
    current = null;
  }

  void checkpoint(int height, DateTime timestamp) {
    prev = current;
    current = ETACheckpoint(height, timestamp);
    if (start == null) start = current;
  }

  @computed
  int? get remaining {
    return current?.let((c) => endHeight - c.height);
  }

  @computed
  String get timeRemaining {
    final defaultMsg = "Calculating ETA";
    final p = prev;
    final c = current;
    if (p == null || c == null) return defaultMsg;
    if (c.timestamp.millisecondsSinceEpoch ==
        p.timestamp.millisecondsSinceEpoch) return defaultMsg;
    final speed = (c.height - p.height) /
        (c.timestamp.millisecondsSinceEpoch -
            p.timestamp.millisecondsSinceEpoch);
    if (speed == 0) return defaultMsg;
    final eta = (endHeight - c.height) / speed;
    if (eta <= 0) return defaultMsg;
    final duration =
        Duration(milliseconds: eta.floor()).toString().split('.')[0];
    return "ETA: $duration";
  }

  @computed
  bool get running => start != null;

  @computed
  int? get progress {
    if (!running) return null;
    final sh = start!.height;
    final ch = current!.height;
    final total = endHeight - sh;
    final percent = total > 0 ? 100 * (ch - sh) ~/ total : 0;
    return percent;
  }
}

class ETACheckpoint {
  int height;
  DateTime timestamp;

  ETACheckpoint(this.height, this.timestamp);
}

var marketPrice = MarketPrice();

class MarketPrice = _MarketPrice with _$MarketPrice;

abstract class _MarketPrice with Store {
  @observable
  double? price;

  @action
  Future<void> update() async {
    final c = coins[aa.coin];
    price = await getFxRate(c.currency, appSettings.currency);
  }

  int? lastChartUpdateTime;
}

var contacts = ContactStore();

class ContactStore = _ContactStore with _$ContactStore;

abstract class _ContactStore with Store {
  @observable
  ObservableList<Contact> contacts = ObservableList<Contact>.of([]);

  @action
  Future<void> fetchContacts() async {
    contacts.clear();
    contacts.addAll(await getContacts(coin: aa.coin));
  }

  @action
  void add(Contact c) {
    storeContact(coin: aa.coin, id: aa.id, contact: c, dirty: true);
    markContactsSaved(aa.coin, false);
    fetchContacts();
  }

  @action
  void remove(Contact c) {
    contacts.removeWhere((contact) => contact.id == c.id);
    final deleted = c.copyWith(name: "");
    storeContact(coin: aa.coin, id: aa.id, contact: deleted, dirty: true);
    markContactsSaved(aa.coin, false);
    fetchContacts();
  }

  @action
  markContactsSaved(int coin, bool v) {
    coinSettings.contactsSaved = true;
    coinSettings.save(coin);
  }
}

class AccountBalanceSnapshot {
  final int coin;
  final int id;
  final int balance;
  AccountBalanceSnapshot({
    required this.coin,
    required this.id,
    required this.balance,
  });

  bool sameAccount(AccountBalanceSnapshot other) =>
      coin == other.coin && id == other.id;

  @override
  String toString() => '($coin, $id, $balance)';
}

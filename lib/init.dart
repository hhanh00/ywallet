import 'dart:io';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'accounts.dart';
import 'appsettings.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'coin/coins.dart';
import 'generated/intl/messages.dart';
import 'main.dart';
import 'utils.dart';
import 'router.dart';

Future<void> initCoins() async {
  final dbPath = await getDbPath();
  Directory(dbPath).createSync(recursive: true);
  for (var coin in coins) {
    coin.init(dbPath);
  }
}

Future<void> restoreWindow() async {
  if (isMobile()) return;
  await windowManager.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final width = prefs.getDouble('width');
  final height = prefs.getDouble('height');
  final size = width != null && height != null ? Size(width, height) : null;
  WindowOptions windowOptions = WindowOptions(
    center: true,
    size: size,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle:
        Platform.isMacOS ? TitleBarStyle.hidden : TitleBarStyle.normal,
  );
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  windowManager.addListener(_OnWindow());
}

class _OnWindow extends WindowListener {
  @override
  void onWindowResized() async {
    final s = await windowManager.getSize();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('width', s.width);
    await prefs.setDouble('height', s.height);
  }

  @override
  void onWindowClose() async {
    logger.d('Shutdown');
    // WarpApi.cancelSync(); TODO
  }
}

void initNotifications() {
  AwesomeNotifications().initialize(
      'resource://drawable/res_notification',
      [
        NotificationChannel(
          channelKey: appName,
          channelName: appName,
          channelDescription: 'Notification channel for $appName',
          defaultColor: Color(0xFFB3F0FF),
          ledColor: Colors.white,
        )
      ],
      debug: false);
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      aaSequence.settingsSeqno;
      final scheme = FlexScheme.values.byName(appSettings.palette.name);
      final baseTheme = appSettings.palette.dark ? FlexThemeData.dark(scheme: scheme)
      : FlexThemeData.light(scheme: scheme);
      final theme = baseTheme.copyWith(
        useMaterial3: true,
        dataTableTheme: DataTableThemeData(
          headingRowColor: MaterialStateColor.resolveWith(
            (_) => baseTheme.highlightColor,
          ),
        ),
      );
      return MaterialApp.router(
        locale: Locale(appSettings.language),
        title: appName,
        debugShowCheckedModeBanner: false,
        theme: theme,
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          FormBuilderLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en'),
          Locale('es'),
          Locale('pt'),
          Locale('fr'),
        ],
        routerConfig: router,
      );
    });
  }
}

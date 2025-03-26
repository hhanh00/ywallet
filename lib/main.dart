import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:zwallet/src/rust/frb_generated.dart';

import 'router.dart';
import 'vote/vote_data.dart';

Logger logger = Logger();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await electionStore.init();
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: "VOTE",
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      );
  }
}

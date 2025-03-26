import 'package:showcaseview/showcaseview.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'vote/delegate.dart';
import 'vote/new.dart';
import 'vote/overview.dart';
import 'vote/select.dart';
import 'vote/vote.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/more/vote',
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => ScaffoldBar(shell: shell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
                path: '/more',
                builder: (context, state) => SizedBox.shrink(),
                routes: [
                  GoRoute(
                      path: 'vote',
                      builder: (context, state) => VoteSelect(),
                      routes: [
                        GoRoute(
                            path: 'new',
                            builder: (context, state) => VoteNew()),
                        GoRoute(
                            path: 'overview',
                            builder: (context, state) => VoteOverview()),
                        GoRoute(
                            path: 'vote',
                            builder: (context, state) => VoteVote()),
                        GoRoute(
                            path: 'delegate',
                            builder: (context, state) => VoteDelegate()),
                      ]),
                ]),
          ],
        ),
      ],
    ),
  ],
);

class ScaffoldBar extends StatefulWidget {
  final StatefulNavigationShell shell;

  const ScaffoldBar({required this.shell, Key? key});

  @override
  State<ScaffoldBar> createState() => _ScaffoldBar();
}

class _ScaffoldBar extends State<ScaffoldBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VOTE"),
        centerTitle: true,
      ),
      body: ShowCaseWidget(builder: (context) => widget.shell),
    );
  }
}

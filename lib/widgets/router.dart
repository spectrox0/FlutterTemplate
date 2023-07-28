// private navigators
import 'package:flutter/material.dart';
import 'package:flutter_template/pages/error_screen.dart';
import 'package:flutter_template/pages/home_page.dart';
import 'package:flutter_template/pages/settings_screen.dart';
import 'package:flutter_template/utils/routes.dart';
import 'package:flutter_template/widgets/layout.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorAKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final _shellNavigatorBKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

class AppRouter {
  get router => _goRouter;

  final _goRouter = GoRouter(
    initialLocation: APP_PAGE.home.toPath,
    navigatorKey: _rootNavigatorKey,
    errorPageBuilder: (context, state) => MaterialPage<void>(
        key: state.pageKey, child: ErrorScreen(error: state.error.toString())),
    routes: [
      // Stateful nested navigation based on:
      // https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // the UI shell
          return ScaffoldWithNestedNavigation(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _shellNavigatorAKey,
            routes: [
              GoRoute(
                path: APP_PAGE.home.toPath,
                name: APP_PAGE.home.toName,
                // redirect: (context, state) => {},
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HomePage(),
                ),
                // routes: [
                //   // child route
                //   GoRoute(
                //     path: 'home',
                //     builder: (context, state) => const DetailsScreen(label: 'A'),
                //   ),
                // ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _shellNavigatorBKey,
            routes: [
              GoRoute(
                path: APP_PAGE.settings.toPath,
                name: APP_PAGE.settings.toName,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: SettingsScreen(),
                ),
                // routes: [
                //   // child route
                //   GoRoute(
                //     path: 'details',
                //     builder: (context, state) => const DetailsScreen(label: 'B'),
                //   ),
                // ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

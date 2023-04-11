import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:bb_ui/routes/bb_routes.dart' as flutter_route;

import 'nav_observer.dart';
final GoRouter router = GoRouter(
  routes: [
    ...flutter_route.$appRoutes,
  ],

  // Log diagnostic info for your routes
  observers: [
    NavObserver(),
  ],
  navigatorKey: _navigatorKey,
);

final _navigatorKey = GlobalKey<NavigatorState>();

@Deprecated('use route.globalContext')
BuildContext? rootContext() => _navigatorKey.currentContext;

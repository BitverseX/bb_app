import 'dart:async';

import 'package:flutter_thrio/flutter_thrio.dart';

import 'src/app.dart' as app;

Future<void> main() async {
  ThrioLogger.v('main');
  runZonedGuarded(app.main, (final error, final stack) {
    Zone.current.handleUncaughtError(error, stack);
  });
}

@pragma('vm:entry-point')
Future<void> biz1() async {
  runZonedGuarded(app.biz1, (final error, final stack) {
    Zone.current.handleUncaughtError(error, stack);
  });
}
@pragma('vm:entry-point')
Future<void> bv_launch() async {
  runZonedGuarded(app.bv_launch, (final error, final stack) {
    Zone.current.handleUncaughtError(error, stack);
  });
}
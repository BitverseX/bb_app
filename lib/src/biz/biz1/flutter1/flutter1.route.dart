// Copyright (c) 2023 foxsofter.
//
// Do not edit this file.
//

import 'package:bb_app/src/biz/types/people.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

import 'home/home.route.dart';

class Flutter1Route extends NavigatorRouteNode {
  factory Flutter1Route(final NavigatorRouteNode parent) =>
      _instance ??= Flutter1Route._(parent);

  Flutter1Route._(super.parent);

  static Flutter1Route? _instance;

  late final home = HomeRoute(this);

  @override
  String get name => 'flutter1';

  /// 通知 flutter1
  ///
  Future<bool> flutter1({required final int intValue}) => ThrioNavigator.notify(
        url: url,
        name: 'flutter1',
        params: intValue,
      );

  /// get people
  ///
  Future<People?> getPeople({final int? intValue}) =>
      ThrioNavigator.act<Map<String, dynamic>, People>(
        url: url,
        action: 'getPeople{intValue?}',
        params: {
          'intValue': intValue,
        },
      );

  /// get string
  ///
  Future<String?> getString({required final bool boolValue}) =>
      ThrioNavigator.act<Map<String, dynamic>, String>(
        url: url,
        action: 'getString{boolValue}',
        params: {
          'boolValue': boolValue,
        },
      );
}

// Copyright (c) 2022 foxsofter.
//

// ignore_for_file: prefer_mixin

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

import '../../../route.dart';
import '../../../types/people.dart';
import '../notifies/flutter1_notify.dart';

part 'home.state.dart';
part 'home.context.dart';

class HomePage extends NavigatorStatefulPage {
  const HomePage({
    super.key,
    required super.moduleContext,
    required super.settings,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with
        NavigatorPageLifecycleMixin,
        AutomaticKeepAliveClientMixin,
        WidgetsBindingObserver {
  late final TextEditingController _inputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      WidgetsBinding.instance.addObserver(this);
    }
  }

  @override
  void dispose() {
    ThrioLogger.d('page1 dispose: ${widget.settings.index}');
    _inputController.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<bool> didPopRoute() async {
    ThrioLogger.v('didPopRoute: flutter 1');
    return false;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void didAppear(final RouteSettings routeSettings) {
    ThrioLogger.d('flutter1 didAppear: $routeSettings ');
  }

  @override
  void didDisappear(final RouteSettings routeSettings) {
    ThrioLogger.d('flutter1 didDisappear: $routeSettings ');
  }

  @override
  Widget build(final BuildContext context) {
    super.build(context);
    return Scaffold(
      body: Center(
        child: Text("flutter1"),
      ),
    );
  }
}

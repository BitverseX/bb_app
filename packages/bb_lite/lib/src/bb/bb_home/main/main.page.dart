// Copyright (c) 2023 foxsofter.
//

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

part 'main.context.dart';
part 'main.state.dart';

class MainPage extends NavigatorStatefulPage {
  const MainPage({
    super.key,
    required super.moduleContext,
    required super.settings,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(final BuildContext context) =>Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Text("bb_lite"),
    ),
  );
}

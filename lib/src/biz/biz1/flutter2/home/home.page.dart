// Copyright (c) 2023 foxsofter.
//

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

part 'home.context.dart';
part 'home.state.dart';

class HomePage extends NavigatorStatefulPage {
  const HomePage({
    super.key,
    required super.moduleContext,
    required super.settings,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(final BuildContext context) => Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Text("flutter2"),
    ),
  );
}

import 'package:bb_ui/routes/bb_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../routes/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeScreen"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          HomeScreenRoute().push(context);
        },child: Text("GO wallet"),),
      ),
    );
  }
}

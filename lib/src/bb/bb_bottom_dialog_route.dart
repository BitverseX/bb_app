
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_thrio/flutter_thrio.dart';

class BBBottomDialogRoute extends NavigatorDialogRoute{
  BBBottomDialogRoute({required super.pageBuilder, required super.settings});

  @override
  Duration get transitionDuration => const Duration(milliseconds: 200);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => false;

  @override
  Color get barrierColor => Color(0xFFFFFFFF);

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  Function? dismissCallback = ThrioNavigator.pop;

  @override
  Widget buildTransitions(
      final BuildContext context,
      final Animation<double> animation,
      final Animation<double> secondaryAnimation,
      final Widget child)  => SlideTransition(
    position: Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
    child: child,
  );
}
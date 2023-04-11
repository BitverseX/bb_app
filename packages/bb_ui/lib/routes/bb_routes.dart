import 'package:bb_ui/screen/home_screen.dart';
import 'package:bb_ui/screen/wallet_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';


part 'bb_routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(path: '/login')
class HomeScreenRoute extends GoRouteData {
  const HomeScreenRoute();

@override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}


@TypedGoRoute<WalletScreenRoute>(path: '/wallet')
class WalletScreenRoute extends GoRouteData{
  const WalletScreenRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const WalletScreen();
}
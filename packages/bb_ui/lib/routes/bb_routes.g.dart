// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bb_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
      $walletScreenRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/login',
      factory: $HomeScreenRouteExtension._fromState,
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) =>
      const HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $walletScreenRoute => GoRouteData.$route(
      path: '/wallet',
      factory: $WalletScreenRouteExtension._fromState,
    );

extension $WalletScreenRouteExtension on WalletScreenRoute {
  static WalletScreenRoute _fromState(GoRouterState state) =>
      const WalletScreenRoute();

  String get location => GoRouteData.$location(
        '/wallet',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

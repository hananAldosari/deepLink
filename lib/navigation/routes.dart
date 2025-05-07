import 'package:deep_link/home/home_screen.dart';
import 'package:deep_link/home/page_one_screen.dart';
import 'package:deep_link/home/page_two_screen.dart';
import 'package:deep_link/settings/account_screen.dart';
import 'package:deep_link/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart'; //part '<current-file>.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<PageOneRoute>(path: 'pageOne'),
    TypedGoRoute<PageTwoRoute>(path: 'pageTwo'),
    TypedGoRoute<SettingsRoute>(
      path: 'settings',
      routes: [
        TypedGoRoute<AccountRoute>(path: 'account'),
      ],
    ),
  ],
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const Home();
}

class PageOneRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const PageOne();
}

class PageTwoRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const PageTwo();
}

class SettingsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const Settings();
}

class AccountRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const Account();
}

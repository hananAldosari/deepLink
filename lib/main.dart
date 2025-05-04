import 'package:deep_link/pages/home/home.dart';
import 'package:deep_link/pages/home/pageOne.dart';
import 'package:deep_link/pages/home/pageTwo.dart';
import 'package:deep_link/pages/settings/account.dart';
import 'package:deep_link/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(
      MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 142, 149, 161),
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => Home(),
      routes: [
        GoRoute(
          path: 'pageOne',
          builder: (_, __) => PageOne(),
        ),
        GoRoute(
          path: 'pageTwo',
          builder: (_, __) => PageTwo(),
        ),
        GoRoute(
          path: 'settings',
          builder: (_, __) => Settings(),
          routes: [
            GoRoute(
              path: 'account',
              builder: (_, __) => Account(),
            ),
          ],
        ),
      ],
    ),
  ],
);

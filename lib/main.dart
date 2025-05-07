import 'package:deep_link/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  // To test the navigation history using a web browser, please uncomment this line and its associated import statement.
  // setUrlStrategy(PathUrlStrategy());

  runApp(
    MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 142, 149, 161),
          foregroundColor: Colors.white,
        ),
      ),
    ),
  );
}

final _router = GoRouter(routes: $appRoutes);

import 'package:deep_link/navigation/routes.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
        ),
        actions: [
          IconButton(
            onPressed: () => SettingsRoute().go(context),
            icon: Icon(Icons.settings),
            color: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => PageOneRoute().go(context),
              child: Container(
                height: 100,
                width: 190,
                color: Colors.red[200],
                child: Center(child: Text("Page 1")),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => PageTwoRoute().go(context),
              child: Container(
                height: 100,
                width: 190,
                color: Colors.blueGrey[200],
                child: Center(child: Text("Page 2")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

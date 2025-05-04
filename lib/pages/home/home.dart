import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () => context.go('/settings'),
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
              onTap: () => context.go('/pageOne'),
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
              onTap: () => context.go('/pageTwo'),
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

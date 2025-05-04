import 'package:deep_link/widgeta/settingsButton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 243, 243),
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          SettingsButton(
            title: 'Account',
            onTap: () => context.go('/settings/account'),
            leadingIcon: Icons.account_circle,
            trailingIcon: Icons.arrow_forward_ios,
          ),
          SettingsButton(
            title: 'Delete Account',
            onTap: () {},
            leadingIcon: Icons.delete,
          ),
        ],
      ),
    );
  }
}

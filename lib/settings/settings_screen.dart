import 'package:deep_link/navigation/routes.dart';
import 'package:deep_link/settings/widgets/settings_button.dart';
import 'package:flutter/material.dart';

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
            onTap: () => AccountRoute().go(context),
            leadingIcon: Icons.account_circle,
            trailingIcon: Icons.arrow_forward_ios,
          ),
          SettingsButton(
            title: 'Delete Account',
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('your account has been deleted ^_^ '),
                duration: Duration(seconds: 2),
              ));
            },
            leadingIcon: Icons.delete,
          ),
        ],
      ),
    );
  }
}

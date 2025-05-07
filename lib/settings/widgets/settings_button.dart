import 'package:flutter/material.dart';

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    super.key,
    required this.title,
    required this.onTap,
    this.leadingIcon,
    this.trailingIcon,
  });

  final String title;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(2),
            child: Ink(
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: ListTile(
                leading: Icon(
                  leadingIcon,
                  size: 40,
                ),
                trailing: Icon(trailingIcon),
                title: Text(title),
                contentPadding: EdgeInsets.all(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

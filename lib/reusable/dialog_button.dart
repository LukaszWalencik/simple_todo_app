// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DialogButoon extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final VoidCallback onpressed;
  const DialogButoon({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(backgroundColor: WidgetStateProperty.all(color)),
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        onPressed: onpressed);
  }
}

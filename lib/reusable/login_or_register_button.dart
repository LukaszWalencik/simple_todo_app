// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginOrRegisterTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const LoginOrRegisterTextButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(color: Colors.purple, fontSize: 16),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final TextInputAction textInputAction;
  final bool? autofocus;
  final String title;
  final Icon icon;
  final TextEditingController textEditingController;
  const ReusableTextField({
    super.key,
    required this.textInputAction,
    this.autofocus,
    required this.title,
    required this.icon,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: textInputAction,
      autofocus: true,
      controller: textEditingController,
      decoration: InputDecoration(
        icon: icon,
        labelText: title,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}

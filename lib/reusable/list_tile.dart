// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String number;
  const ReusableListTile({
    super.key,
    required this.title,
    this.subtitle,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.grey[800],
      child: ListTile(
        leading: Text(number),
        title: Text(
          title,
        ),
      ),
    );
  }
}

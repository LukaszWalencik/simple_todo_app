// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  final String number;
  final String title;
  final String? subtitle;
  const ReusableListTile({
    super.key,
    required this.number,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Colors.black,
            width: 5,
          ),
          color: Colors.grey[600]),
      margin: const EdgeInsets.all(8),
      // color: Colors.grey[800],
      child: ListTile(
        leading: Text(
          '#$number',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        subtitle: subtitle != null
            ? Text(
                subtitle!,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              )
            : null,
      ),
    );
  }
}

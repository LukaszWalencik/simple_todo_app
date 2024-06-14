import 'package:flutter/material.dart';
import 'package:simple_todo_app/reusable/list_tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = ['first title', 'seccond titile'];
    List<Map<String, dynamic>> mapTiles = [
      {
        'number': '1',
        'title': 'title one',
        'subtitle': 'subtitle one',
      },
      {
        'number': '2',
        'title': 'title two',
        'subtitle': 'subtitle two',
      },
      {
        'number': '3',
        'title': 'title three',
        'subtitle': 'subtitle three',
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: const Text(
            'What we need to do?',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            ReusableListTile(
              number: '',
              title: titles[0],
            ),
            ReusableListTile(
              number: '',
              title: titles[1],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

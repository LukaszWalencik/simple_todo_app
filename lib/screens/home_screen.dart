import 'package:flutter/material.dart';
import 'package:simple_todo_app/reusable/list_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'What we need to do?',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: mapTiles.length,
        itemBuilder: (context, index) {
          return ReusableListTile(
            number: mapTiles[index]['number'],
            title: mapTiles[index]['title'],
            subtitle: mapTiles[index]['subtitle'],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black, width: 5),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.8,
              ),
            ),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
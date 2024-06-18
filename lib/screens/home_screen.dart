import 'package:flutter/material.dart';
import 'package:simple_todo_app/reusable/list_tile.dart';
import 'package:simple_todo_app/reusable/text_field.dart';

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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Add new task!',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 30),
                      const ReusableTextField(
                        title: 'What we need to do?',
                        icon: Icon(Icons.keyboard_rounded),
                      ),
                      const SizedBox(height: 20),
                      const ReusableTextField(
                        title: 'More descryption',
                        icon: Icon(Icons.question_mark_rounded),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.red)),
                            icon: const Icon(
                              Icons.cancel_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Cancel',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            onPressed: () {},
                          ),
                          ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(Colors.green)),
                            icon: const Icon(
                              Icons.add_task_outlined,
                              color: Colors.white,
                            ),
                            label: const Text(
                              'Add',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            onPressed: () {},
                          )
                        ],
                      )
                    ],
                  ),
                ),
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

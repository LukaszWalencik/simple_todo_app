import 'package:flutter/material.dart';
import 'package:simple_todo_app/global/global.dart';
import 'package:simple_todo_app/reusable/dialog_button.dart';
import 'package:simple_todo_app/reusable/list_tile.dart';
import 'package:simple_todo_app/reusable/text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleTextController = TextEditingController();
    TextEditingController descryptionTextController = TextEditingController();
    List<String> tasks = sharedPreferences!.getStringList('task')!.toList();
    // List<Map<String, dynamic>> mapTiles = [
    //   {
    //     'number': '1',
    //     'title': 'title one',
    //     'subtitle': 'subtitle one',
    //   },
    //   {
    //     'number': '2',
    //     'title': 'title two',
    //     'subtitle': 'subtitle two',
    //   },
    //   {
    //     'number': '3',
    //     'title': 'title three',
    //     'subtitle': 'subtitle three',
    //   }
    // ];
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
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ReusableListTile(
              number: '0', title: tasks[0], subtitle: tasks[1]);
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
                      const SizedBox(height: 30),
                      ReusableTextField(
                        textInputAction: TextInputAction.next,
                        textEditingController: titleTextController,
                        title: 'What we need to do?',
                        icon: const Icon(Icons.keyboard_rounded),
                      ),
                      const SizedBox(height: 20),
                      ReusableTextField(
                        textInputAction: TextInputAction.done,
                        autofocus: false,
                        textEditingController: descryptionTextController,
                        title: 'More descryption',
                        icon: const Icon(Icons.question_mark_rounded),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          DialogButoon(
                            color: Colors.red,
                            icon: Icons.cancel_outlined,
                            title: 'Cancel',
                            onpressed: () {
                              Navigator.pop(context, true);
                            },
                          ),
                          DialogButoon(
                            color: Colors.green,
                            icon: Icons.add_task_outlined,
                            title: 'Add',
                            onpressed: () {
                              Navigator.pop(context, true);
                            },
                          ),
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

import 'package:flutter/material.dart';
import 'package:to_do_list/home_screen.dart';

class AddTaskScreen extends StatelessWidget {
  static String routeName = 'AddTaskScreen';
  String taskTitle = '';

  @override
  Widget build(BuildContext context) {
    List<String> tasks =
        ModalRoute.of(context)!.settings.arguments as List<String>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Task'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'Add Your Task'),
              onChanged: (String value) {
                taskTitle = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                tasks.add(taskTitle);
                Navigator.pop(context, tasks);
              },
              child: Text('Add Task'),
              style: ElevatedButton.styleFrom(minimumSize: Size(70, 50)),
            ),
          ],
        ),
      ),
    );
  }
}

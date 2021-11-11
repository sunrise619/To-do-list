import 'package:flutter/material.dart';
import 'package:to_do_list/add_task_screen.dart';
import 'package:to_do_list/edit_screen.dart';
import 'package:to_do_list/to_do_widget.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.pushNamed(
              context, AddTaskScreen.routeName,
              arguments: tasks);

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Container(
          child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
            child: ToDoWidget(tasks, index),
            onTap: () async {
              List<String> res = await Navigator.pushNamed(
                  context, EditScreen.routeName,
                  arguments: tasksData(tasks, index)) as List<String>;
              setState(() {});
            }),
        itemCount: tasks.length,
      )),
    );
  }
}

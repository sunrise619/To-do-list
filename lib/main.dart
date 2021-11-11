import 'package:flutter/material.dart';
import 'package:to_do_list/add_task_screen.dart';
import 'package:to_do_list/edit_screen.dart';
import 'package:to_do_list/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        AddTaskScreen.routeName: (context) => AddTaskScreen(),
        EditScreen.routeName: (context) => EditScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}

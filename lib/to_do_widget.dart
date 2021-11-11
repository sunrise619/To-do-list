import 'package:flutter/material.dart';

class ToDoWidget extends StatefulWidget {
  List<String> tasks;
  int index;
  ToDoWidget(this.tasks, this.index);

  @override
  _ToDoWidgetState createState() => _ToDoWidgetState();
}

class _ToDoWidgetState extends State<ToDoWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          widget.tasks[widget.index],
        ),
      ],
    );
  }
}

class tasksData {
  List<String> tasks;
  int index;
  tasksData(this.tasks, this.index);
}

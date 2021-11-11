import 'package:flutter/material.dart';
import 'package:to_do_list/to_do_widget.dart';

class EditScreen extends StatefulWidget {
  static String routeName = 'EditScreen';

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    TasksData taskData =
        ModalRoute.of(context)!.settings.arguments as TasksData;
    TextEditingController taskName2 =
        TextEditingController(text: taskData.tasks[taskData.index]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: taskName2,
              onChanged: (String value) {
                taskName2.text = value;
              },
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      taskData.tasks.removeAt(taskData.index);
                      Navigator.pop(context, taskData.tasks);
                      setState(() {});
                    },
                    child: Text('Delete'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      taskData.tasks[taskData.index] = taskName2.text;
                      Navigator.pop(context, taskData.tasks);
                    },
                    child: Text(
                      'Edit',
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

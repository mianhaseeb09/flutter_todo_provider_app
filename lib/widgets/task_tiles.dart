import 'package:flutter/material.dart';

class TaskTileState extends StatefulWidget {
  const TaskTileState({Key? key}) : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTileState> {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.',style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough:null
      ),),
      trailing: TaskCheckBox(isChecked),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
final bool checkboxState;

TaskCheckBox(this.checkboxState);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,

        onChanged: (bool? value) {  },
      value: null,


    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todo_provider_app/screeens/add_task.dart';
import 'package:flutter_todo_provider_app/widgets/tasks_list.dart';

class TaskScreen extends StatelessWidget {
  Widget buildButtomSheet(BuildContext context) => AddTaskScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: buildButtomSheet);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(
                  Icons.list,
                  size: 30.0,
                  color: Colors.lightBlueAccent,
                ),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: TasksList(),
          ),
        ),
      ]),
    );
  }
}

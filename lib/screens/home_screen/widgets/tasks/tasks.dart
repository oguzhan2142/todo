import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screens/home_screen/widgets/tasks/widgets/task_tile.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TaskTile(task: Task(content: 'asdasd')),
        TaskTile(task: Task(content: 'iki')),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/screens/home_screen/widgets/tasks/widgets/task_tile.dart';
import 'package:todo/state/data_state.dart';

class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          DataState.state.getAllTasks().map((e) => TaskTile(task: e)).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class Project {
  final Color color;
  final String name;
  final List<Task> tasks = [];

  Project(this.color, this.name);

  double getPercentage() {
    var checkedTasks = tasks.where((element) => element.isChecked == true);
    if (tasks.isEmpty) return 0;
    return checkedTasks.length / tasks.length;
  }

  Task getClosest() {
    var copyTasks = [];
    copyTasks.addAll(tasks);
    copyTasks.sort((a, b) => b.time.compareTo(a.time));
    return tasks.first;
  }
}

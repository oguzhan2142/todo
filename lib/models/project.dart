import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class Project {
  final Color color;
  final String name;
  final List<Task> tasks = [];

  Project(this.color, this.name);
}

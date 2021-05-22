import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo/models/project.dart';
import 'package:todo/models/task.dart';

part 'data_state.g.dart';

class DataState extends _DataState with _$DataState {
  DataState._() {
    var projem = Project(Colors.blue, 'Projem');
    projem.tasks.addAll([
      Task(
          content: 'birinci gorev',
          isChecked: true,
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(34000000000)),
      Task(
        content: 'ikinci gorev',
        isChecked: true,
        startTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
        endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
      ),
    ]);

    projects.add(projem);

    var meetings = Project(Colors.green, 'Toplantilar');
    meetings.tasks.addAll([
      Task(
          content: 'birinci meeting',
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(20000000000)),
      Task(
          content: '2 meeting',
          isChecked: true,
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(30000000000)),
      Task(
          content: '3 meeting',
          isChecked: true,
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(40000000000)),
      Task(
          content: '4 meeting',
          isChecked: true,
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(23000000000)),
      Task(
          content: '5 meeting',
          isChecked: true,
          endTime: DateTime.fromMillisecondsSinceEpoch(40000000000),
          startTime: DateTime.fromMillisecondsSinceEpoch(50000000000)),
    ]);
    projects.add(meetings);
  }
  static final DataState state = DataState._();
}

abstract class _DataState with Store {
  @observable
  var projects = ObservableList<Project>();

  @action
  void addProject(Project project) {
    projects.add(project);
    print(projects.length);
  }

  List<Task> getAllTasks() {
    var list = <Task>[];

    projects.forEach((element) {
      list.addAll(element.tasks);
    });

    return list;
  }
}

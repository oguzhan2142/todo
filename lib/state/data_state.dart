import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo/models/project.dart';
import 'package:todo/models/task.dart';

part 'data_state.g.dart';

class DataState extends _DataState with _$DataState {
  DataState._() {
    var projem = Project(Colors.blue, 'Project');
    projem.tasks.addAll([
      Task(
        content: 'task 1',
        isChecked: true,
        startTime: DateTime(2021, 1, 1, 1, 0),
        endTime: DateTime(2021, 1, 1, 1, 30),
      ),
      Task(
        content: 'task 2',
        isChecked: true,
        startTime: DateTime(2021, 1, 1, 5, 0),
        endTime: DateTime(2021, 1, 1, 7, 30),
      ),
    ]);

    projects.add(projem);

    var meetings = Project(Colors.green, 'Toplantilar');
    meetings.tasks.addAll([
      Task(
        content: 'birinci meeting',
        startTime: DateTime(2021, 1, 1, 1, 0),
        endTime: DateTime(2021, 1, 1, 1, 30),
      ),
      Task(
        content: '2. meeting',
        isChecked: true,
        startTime: DateTime(2021, 1, 1, 5, 0),
        endTime: DateTime(2021, 1, 1, 7, 30),
      ),
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

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:todo/models/project.dart';
import 'package:todo/models/task.dart';

part 'data_state.g.dart';

class DataState extends _DataState with _$DataState {
  DataState._() {
    var projem = Project(Colors.blue, 'Projem');
    projem.tasks.addAll([
      Task(content: 'birinci gorev', isChecked: true),
      Task(content: 'ikinci gorev', isChecked: true),
    ]);

    projects.add(projem);

    var meetings = Project(Colors.green, 'Toplantilar');
    meetings.tasks.addAll([
      Task(content: 'birinci meeting'),
      Task(content: 'ikinci meeting', isChecked: true),
      Task(content: 'ikinci meeting', isChecked: true),
      Task(content: 'ikinci meeting', isChecked: true),
      Task(content: 'ikinci meeting', isChecked: true),
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
}

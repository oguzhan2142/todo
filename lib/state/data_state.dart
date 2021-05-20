import 'package:mobx/mobx.dart';
import 'package:todo/models/project.dart';

part 'data_state.g.dart';

class DataState = _DataState with _$DataState;

abstract class _DataState with Store {
  @observable
  List<Project> projects = [];

  @action
  void addProject(Project project) {
    projects.add(project);
  }
}

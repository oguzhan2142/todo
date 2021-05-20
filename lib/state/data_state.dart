import 'package:mobx/mobx.dart';
import 'package:todo/models/project.dart';

part 'data_state.g.dart';

class DataState extends _DataState with _$DataState {
  DataState._();
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

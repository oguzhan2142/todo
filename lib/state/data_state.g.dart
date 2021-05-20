// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataState on _DataState, Store {
  final _$projectsAtom = Atom(name: '_DataState.projects');

  @override
  ObservableList<Project> get projects {
    _$projectsAtom.reportRead();
    return super.projects;
  }

  @override
  set projects(ObservableList<Project> value) {
    _$projectsAtom.reportWrite(value, super.projects, () {
      super.projects = value;
    });
  }

  final _$_DataStateActionController = ActionController(name: '_DataState');

  @override
  void addProject(Project project) {
    final _$actionInfo =
        _$_DataStateActionController.startAction(name: '_DataState.addProject');
    try {
      return super.addProject(project);
    } finally {
      _$_DataStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
projects: ${projects}
    ''';
  }
}

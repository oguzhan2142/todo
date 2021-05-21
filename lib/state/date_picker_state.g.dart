// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_picker_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DatePickerState on _DatePickerState, Store {
  final _$isSelectedAtom = Atom(name: '_DatePickerState.isSelected');

  @override
  ObservableList<dynamic> get isSelected {
    _$isSelectedAtom.reportRead();
    return super.isSelected;
  }

  @override
  set isSelected(ObservableList<dynamic> value) {
    _$isSelectedAtom.reportWrite(value, super.isSelected, () {
      super.isSelected = value;
    });
  }

  final _$_DatePickerStateActionController =
      ActionController(name: '_DatePickerState');

  @override
  void setSelected(int index) {
    final _$actionInfo = _$_DatePickerStateActionController.startAction(
        name: '_DatePickerState.setSelected');
    try {
      return super.setSelected(index);
    } finally {
      _$_DatePickerStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSelected: ${isSelected}
    ''';
  }
}

import 'package:mobx/mobx.dart';

part 'date_picker_state.g.dart';

class DatePickerState extends _DatePickerState with _$DatePickerState {
  DatePickerState(int days, int currentDay) {
    isSelected.addAll(List<bool>.generate(
        days, (index) => index == currentDay - 1 ? true : false));
  }
}

abstract class _DatePickerState with Store {
  @observable
  ObservableList isSelected = ObservableList<bool>();

  @action
  void setSelected(int index) {
    for (var i = 0; i < isSelected.length; i++) {
      if (i == index) {
        isSelected[i] = true;
      } else {
        isSelected[i] = false;
      }
    }
  }
}

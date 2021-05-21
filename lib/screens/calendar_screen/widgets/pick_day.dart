import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/screens/calendar_screen/widgets/date_box.dart';
import 'package:todo/state/date_picker_state.dart';

class PickDay extends StatefulWidget {
  @override
  _PickDayState createState() => _PickDayState();
}

class _PickDayState extends State<PickDay> {
  final controller = ScrollController();
  late final datePickerState;
  final now = DateTime.now();
  late final int days;

  @override
  void initState() {
    super.initState();
    days = daysInMonth(now);
    datePickerState = DatePickerState(days, now.day);
    WidgetsBinding.instance!.addPostFrameCallback((_) => jumpToCurrentDay());
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = DateTime(firstDayThisMonth.year,
        firstDayThisMonth.month + 1, firstDayThisMonth.day);
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  void jumpToCurrentDay() {
    var offset = Values.DATE_BOX_WIDTH + Values.PICK_DATE_DIVIDER_WIDTH;
    var halfOfScreen =
        MediaQuery.of(context).size.width / 2 + Values.DATE_BOX_WIDTH / 2;
    controller.jumpTo(offset * DateTime.now().day - halfOfScreen);
  }

  @override
  Widget build(BuildContext context) {
    var firstDayOfCurrentMonth = DateTime(now.year, now.month, 1);

    return Container(
      height: 90,
      child: ListView.separated(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var datetime = firstDayOfCurrentMonth.add(Duration(days: index));
          return Observer(
            builder: (_) => GestureDetector(
              onTap: () => datePickerState.setSelected(index),
              child: DateBox(
                dateTime: datetime,
                isSelected: datePickerState.isSelected[index],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => VerticalDivider(
          color: Colors.transparent,
          width: Values.PICK_DATE_DIVIDER_WIDTH,
        ),
        itemCount: days,
      ),
    );
  }
}

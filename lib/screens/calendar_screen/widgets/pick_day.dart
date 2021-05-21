import 'package:flutter/material.dart';

import 'package:todo/constants/values.dart';
import 'package:todo/screens/calendar_screen/widgets/date_box.dart';

class PickDay extends StatefulWidget {
  @override
  _PickDayState createState() => _PickDayState();
}

class _PickDayState extends State<PickDay> {
  final controller = ScrollController();
  @override
  void initState() {
    super.initState();
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
    var now = DateTime.now();
    var firstDayOfCurrentMonth = DateTime(now.year, now.month, 1);
    var days = daysInMonth(now);

    return Container(
      height: 90,
      child: ListView.separated(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var datetime = firstDayOfCurrentMonth.add(Duration(days: index));

          return DateBox(
            dateTime: datetime,
            isSelected: false,
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

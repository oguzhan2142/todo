import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/screens/calendar_screen/widgets/calendar_app_bar.dart';
import 'package:todo/screens/calendar_screen/widgets/pick_day.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darker,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CalendarAppBar(),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 40),
          PickDay(),
        ],
      ),
    );
  }
}

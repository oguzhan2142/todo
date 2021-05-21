import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/screens/calendar_screen/widgets/calendar_app_bar.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darker,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: CalendarAppBar(),
      ),
    );
  }
}

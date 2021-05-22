import 'package:flutter/material.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/task.dart';

class TimelineCard extends StatelessWidget {
  final Task task;
  final Color color;

  const TimelineCard({
    Key? key,
    required this.color,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 20, top: 15),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

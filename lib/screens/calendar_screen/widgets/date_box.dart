import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';

class DateBox extends StatelessWidget {
  final DateTime dateTime;
  final bool isSelected;

  DateBox({
    Key? key,
    required this.dateTime,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: Values.DATE_BOX_WIDTH,
      decoration: BoxDecoration(
        color: isSelected ? AppColor.blue : AppColor.lighter,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            dateTime.day.toString(),
            style: TextStyle(
              color: AppColor.white,
              fontWeight: FontWeight.w700,
              fontSize: 17,
            ),
          ),
          Text(
            DateFormat('EEE', 'tr').format(dateTime),
            style: TextStyle(
              color: AppColor.white.withOpacity(0.8),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

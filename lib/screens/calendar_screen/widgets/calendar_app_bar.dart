import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

class CalendarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: AppColor.lighter,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.elliptical(35, 40),
          bottomRight: Radius.elliptical(35, 40),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColor.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Center(
            child: Text(
              'Calendar',
              style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.ac_unit,
              color: Colors.transparent,
            ),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

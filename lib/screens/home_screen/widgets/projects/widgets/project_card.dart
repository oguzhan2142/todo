import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/screens/home_screen/widgets/projects/widgets/pie_progress_indicator.dart';
import 'package:todo/screens/home_screen/widgets/projects/widgets/time_widget.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Values.projectCardPadding),
      margin:
          EdgeInsets.symmetric(horizontal: Values.projectCardHorizontalMargin),
      decoration: BoxDecoration(
        color: AppColor.lighter,
        borderRadius: BorderRadius.circular(Values.cardRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PieProgressIndicator(
            color: Colors.deepOrangeAccent,
            progress: 50,
          ),
          SizedBox(height: 5),
          Text(
            'Meetings',
            style: TextStyle(
              color: AppColor.white.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Amanda\'s Ruth',
            style: TextStyle(
              fontSize: 18,
              color: AppColor.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 18),
          TimeWidget(color: Colors.deepOrangeAccent),
        ],
      ),
    );
  }
}

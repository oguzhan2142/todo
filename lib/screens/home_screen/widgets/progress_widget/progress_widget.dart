import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/widgets/category_label.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/widgets/circular_progress.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: AppColor.lighter,
        borderRadius: BorderRadius.circular(Values.cardRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(Values.cardPadding),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: CircularProgress(),
            ),
            SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: CategoryLabel(
                color: Colors.blue,
                label: 'Meetings',
                percentage: 34,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

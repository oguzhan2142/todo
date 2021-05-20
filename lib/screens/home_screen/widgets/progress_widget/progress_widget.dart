import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/widgets/category_label.dart';

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
            Flexible(
              flex: 1,
              child: Container(),
            ),
            Flexible(
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

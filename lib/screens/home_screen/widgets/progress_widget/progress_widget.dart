import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/widgets/circular_progress.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/widgets/labels_section.dart';


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
              child: LabelsSection(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/project.dart';
import 'package:todo/screens/home_screen/widgets/projects/widgets/pie_progress_indicator.dart';
import 'package:todo/screens/home_screen/widgets/projects/widgets/time_widget.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Values.projectCardPadding),
      margin:
          EdgeInsets.symmetric(horizontal: Values.projectCardHorizontalMargin),
      constraints: BoxConstraints(
        minWidth: Values.MINIMUM_WIDT_PROJECT_CARD,
      ),
      decoration: BoxDecoration(
        color: AppColor.lighter,
        borderRadius: BorderRadius.circular(Values.cardRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PieProgressIndicator(
            color: project.color,
            progress: project.getPercentage() * 100,
          ),
          SizedBox(height: 5),
          Text(
            project.name,
            style: TextStyle(
              color: AppColor.white.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 14),
          Text(
            project.getClosest().content,
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

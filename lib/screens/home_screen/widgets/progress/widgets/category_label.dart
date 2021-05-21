import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/project.dart';

class CategoryLabel extends StatelessWidget {
  final Project project;

  const CategoryLabel({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(vertical: Values.verticalMarginBetweenLabels),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: Values.categoryLabelRadius,
                height: Values.categoryLabelRadius,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: project.color,
                ),
              ),
              SizedBox(width: 8),
              Text(
                project.name,
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            '%${(project.getPercentage() * 100).toInt()}',
            style: TextStyle(
              color: AppColor.white.withOpacity(0.7),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

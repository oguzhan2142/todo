import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';

class CategoryLabel extends StatelessWidget {
  final Color color;
  final String label;
  final double percentage;

  const CategoryLabel({
    Key? key,
    required this.color,
    required this.label,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: color,
                ),
              ),
              SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: AppColor.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Text(
            '%${percentage.toInt()}',
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

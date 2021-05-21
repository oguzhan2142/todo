import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: AppColor.white.withOpacity(0.5),
                    border: Border.all(
                      color: AppColor.white
                          .withOpacity(Values.taskTileCheckOpacity),
                      width: 1.5,
                    )),
              ),
              task.isChecked
                  ? Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white
                            .withOpacity(Values.taskTileCheckOpacity),
                      ),
                    )
                  : Container(),
            ],
          ),
          SizedBox(width: 14),
          Text(
            task.content,
            style: TextStyle(
              color: AppColor.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

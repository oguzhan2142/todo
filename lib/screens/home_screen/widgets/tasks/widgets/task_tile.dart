import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/task.dart';

class TaskTile extends StatelessWidget {
  final Task task;

  const TaskTile({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.lighter,
        borderRadius: BorderRadius.circular(Values.cardRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
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
                      width: 2.5,
                    )),
              ),
              task.isChecked
                  ? Container(
                      width: 13,
                      height: 13,
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

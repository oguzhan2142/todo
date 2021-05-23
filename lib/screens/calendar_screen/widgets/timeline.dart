import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/models/task.dart';
import 'package:todo/state/data_state.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  final tasks = <Task>[];
  final labelHeight = 40.0;
  final cardHeight = 120.0;
  late final children = <Widget>[];

  @override
  void initState() {
    tasks.add(DataState.state.projects[1].tasks[0]);
    tasks.add(DataState.state.projects[1].tasks[1]);

    tasks.sort((a, b) => a.startTime.compareTo(b.startTime));
    var counter = 0;
    for (var index = 0; index < 2 * tasks.length + 1; index++) {
      var task = tasks[counter];

      var diff = task.endTime.difference(task.startTime).inMinutes;
      if (index % 2 == 0) {
        var space;

        if (index == 0) {
          space = task.startTime.minute + task.startTime.hour * 60;
        } else if (index == 2 * tasks.length) {
          space = 24 * 60 - (task.endTime.minute + task.endTime.hour * 60);
        } else {
          var beforeTask = tasks[counter - 1];

          space = task.startTime.difference(beforeTask.endTime).inMinutes;
        }

        children.add(
          Flexible(
            flex: space,
            child: Container(),
          ),
        );
      } else {
        if (counter < tasks.length - 1) {
          counter++;
        }

        var project = DataState.state.projects
            .firstWhere((element) => element.tasks.contains(task));
        var formatter = DateFormat('kk:mm a');

        var timeText = formatter.format(task.startTime) +
            ' - ' +
            formatter.format(task.endTime);

        children.add(
          Flexible(
            flex: diff,
            fit: FlexFit.tight,
            child: Container(
              margin: EdgeInsets.only(left: 50, right: 20),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.lighter,
              ),
              child: Row(
                children: [
                  Container(
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                      color: project.color,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        diff > 50
                            ? Text(
                                project.name,
                                style: TextStyle(
                                  color: project.color,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            : Container(),
                        SizedBox(height: 6),
                        Text(
                          task.content,
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          timeText,
                          style: TextStyle(
                            color: AppColor.white.withOpacity(0.5),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: List.generate(
              24 * 2,
              (index) {
                var height = index % 2 == 0 ? labelHeight : cardHeight;
                if (index % 2 == 0) {
                  var hour = index ~/ 2;

                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    height: height,
                    // color: Colors.red,
                    child: Text(
                      '',
                      style: TextStyle(
                        color: AppColor.white,
                      ),
                    ),
                  );
                } else {
                  return Container(
                    height: height,
                  );
                }
              },
            ),
          ),
          Column(
            children: List.generate(
              24 * 2,
              (index) {
                var height = index % 2 == 0 ? labelHeight : cardHeight;
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  height: height,
                  // color: index % 2 == 0 ? Colors.grey : Colors.transparent,
                );
              },
            ),
          ),
          Container(
            width: double.infinity,
            height: (cardHeight + labelHeight) * 24,
            child: Column(
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

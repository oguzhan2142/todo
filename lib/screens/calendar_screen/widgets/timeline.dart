import 'package:flutter/material.dart';
import 'package:todo/models/task.dart';

class TimeLine extends StatefulWidget {
  @override
  _TimeLineState createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  final tasks = <Task>[
    Task(
      content: 'content 2',
      startTime: DateTime(2021, 1, 1, 1, 0),
      endTime: DateTime(2021, 1, 1, 1, 30),
    ),
    Task(
      startTime: DateTime(2021, 1, 1, 5, 0),
      content: 'content',
      endTime: DateTime(2021, 1, 1, 7, 30),
    ),
  ];

  late final children = <Widget>[];

  @override
  void initState() {
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
        print('flex in space $space');
        children.add(Flexible(
          flex: space,
          child: Container(),
        ));
      } else {
        if (counter < tasks.length - 1) {
          counter++;
        }
        print('flex in card $diff');
        children.add(Flexible(
          flex: diff,
          child: Container(
            margin: EdgeInsets.only(left: 50, right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lime,
            ),
          ),
        ));
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 24 * 60,
            child: Column(
              children: children,
            ),
          ),
          Container(
            height: 24 * 60,
            color: Colors.blueAccent,
            child: Column(
              children: List.generate(
                24,
                (index) => Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    width: double.infinity,
                    child: Text(
                      index.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

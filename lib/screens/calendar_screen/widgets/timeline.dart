import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';
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

  final _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(_key.currentContext!.size!.height);
      },
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: List.generate(
                24 * 2,
                (index) {
                  var height = index % 2 == 0 ? 15.0 : 45.0;
                  if (index % 2 == 0) {
                    return Container(
                      width: double.infinity,

                      height: height,
                      // color: Colors.red,
                      child: Text(
                        (index ~/ 2).toString(),
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
              key: _key,
              children: List.generate(
                24 * 2,
                (index) {
                  var height = index % 2 == 0 ? 15.0 : 45.0;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: height,
                    color: Colors.grey,
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 60 * 24,
              child: Column(
                // children: List.generate(tasks., (index) => null),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

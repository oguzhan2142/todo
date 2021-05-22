import 'package:flutter/material.dart';

class TimelineCard extends StatelessWidget {
  final space = 24.0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: space * 5 + 61 * 4,
      child: Container(
        margin: EdgeInsets.only(left: 60),
        height: 61,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.lime,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

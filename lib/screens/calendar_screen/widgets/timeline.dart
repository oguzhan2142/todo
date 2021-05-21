import 'package:flutter/material.dart';
import 'package:todo/constants/colors.dart';

class TimeLine extends StatelessWidget {
  String getClockText(int index) {
    var value = index / 61;
    var buffer = StringBuffer();
    if (value > 12) {
      var convertedValue = (value % 12).toInt();
      buffer.write(convertedValue.toString());
      buffer.write(' pm');
    } else {
      var convertedValue = value.toInt();
      buffer.write(convertedValue.toString());
      buffer.write(' am');
    }

    return buffer.toString().padLeft(5);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: 24 * 60 + 24,
        itemBuilder: (context, index) {
          if (index % 61 == 0) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    getClockText(index),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColor.white.withOpacity(0.6),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Divider(
                      color: AppColor.white.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
            );
          }
          return Container(height: 1);
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final Color color;

  const TimeWidget({Key? key, required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        'today',
        style: TextStyle(color: color),
      ),
    );
  }
}

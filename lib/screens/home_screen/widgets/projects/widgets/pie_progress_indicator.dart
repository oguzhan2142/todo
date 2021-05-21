import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:todo/constants/values.dart';

class PieProgressIndicator extends StatelessWidget {
  final double progress;
  final Color color;

  const PieProgressIndicator({
    Key? key,
    required this.progress,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          dataMap: {
            'visible': progress,
            'invisible': 100 - progress,
          },
          animationDuration: Duration(milliseconds: 800),
          chartRadius: Values.pieIndicatorRadius,
          initialAngleInDegree: -90,
          chartType: ChartType.disc,
          colorList: [color, Colors.transparent],
          legendOptions: LegendOptions(
            showLegends: false,
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: false,
            showChartValues: false,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        ),
        PieChart(
          dataMap: {
            'visible': 100,
          },
          animationDuration: Duration(milliseconds: 800),
          chartRadius: Values.pieIndicatorRadius,
          ringStrokeWidth: 2,
          initialAngleInDegree: -90,
          chartType: ChartType.ring,
          colorList: [color, Colors.transparent],
          legendOptions: LegendOptions(
            showLegends: false,
          ),
          chartValuesOptions: ChartValuesOptions(
            showChartValueBackground: false,
            showChartValues: false,
            showChartValuesInPercentage: false,
            showChartValuesOutside: false,
            decimalPlaces: 1,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/project.dart';
import 'package:todo/state/data_state.dart';

class CircularProgress extends StatefulWidget {
  @override
  _CircularProgressState createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {

  List<Widget> children = [];
  late final width;
  final sizeDifferenceBetweenCircles = 30;
  
  @override
  void didChangeDependencies() {
    // WidgetsBinding.instance!.addPostFrameCallback(
    //     (_) => setState(() => children = buildAllCircles()));
    width = MediaQuery.of(context).size.width / 2 -
        (1.5 * Values.cardPadding + Values.homeHorizontalMargin);
    super.didChangeDependencies();
  }

  List<Widget> buildAllCircles() {
    return List.generate(
        DataState.state.projects.length,
        (index) => buildCircle(DataState.state.projects[index],
            width - index * sizeDifferenceBetweenCircles));
  }

  Widget buildCircle(Project project, double size) {
    return Center(
      child: SleekCircularSlider(
        innerWidget: (percentage) => Container(),
        appearance: CircularSliderAppearance(
          startAngle: 180,
          counterClockwise: false,
          angleRange: 360,
          size: size,
          customWidths: CustomSliderWidths(progressBarWidth: 8),
          customColors: CustomSliderColors(
            dotColor: Colors.transparent,
            dynamicGradient: false,
            trackColor: Colors.transparent,
            progressBarColor: project.color,
          ),
        ),
        initialValue: project.getPercentage() * 100,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Stack(
          children: buildAllCircles(),
        );
      },
    );
  }
}

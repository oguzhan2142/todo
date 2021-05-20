import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class CircularProgress extends StatefulWidget {
  @override
  _CircularProgressState createState() => _CircularProgressState();
}

class _CircularProgressState extends State<CircularProgress> {
  final GlobalKey _key = GlobalKey();
  List<Widget> children = [];

  final sizeDifferenceBetweenCircles = 30;

  @override
  void didChangeDependencies() {
    WidgetsBinding.instance!.addPostFrameCallback(
        (_) => setState(() => children = buildAllCircles()));
    super.didChangeDependencies();
  }

  List<Widget> buildAllCircles() {
    var width = _key.currentContext!.size!.width;

    return List.generate(5,
        (index) => buildCircle(width - index * sizeDifferenceBetweenCircles));
  }

  Widget buildCircle(double size) {
    return Center(
      child: SleekCircularSlider(
        innerWidget: (percentage) => Container(),
        appearance: CircularSliderAppearance(
          size: size,
          customWidths: CustomSliderWidths(progressBarWidth: 8),
          customColors: CustomSliderColors(
            dynamicGradient: false,
            trackColor: Colors.transparent,
            progressBarColor: Colors.blue,
          ),
        ),
        initialValue: 30,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: _key,
      children: children,
    );
  }
}

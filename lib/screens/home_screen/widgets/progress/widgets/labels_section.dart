import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:todo/screens/home_screen/widgets/progress/widgets/category_label.dart';

import 'package:todo/state/data_state.dart';

class LabelsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: DataState.state.projects
            .map((e) => CategoryLabel(project: e))
            .toList(),
      ),
    );
  }
}

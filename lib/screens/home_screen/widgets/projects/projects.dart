import 'package:flutter/material.dart';
import 'package:todo/screens/home_screen/widgets/projects/widgets/project_card.dart';
import 'package:todo/state/data_state.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: DataState.state.projects
              .map((element) => ProjectCard(project: element))
              .toList()),
    );
  }
}

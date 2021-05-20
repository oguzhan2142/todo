import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/models/project.dart';
import 'package:todo/screens/home_screen/widgets/progress_widget/progress_widget.dart';
import 'package:todo/state/data_state.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darker,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blue,
        onPressed: () {
          DataState.state.addProject(Project(Colors.lime, 'Projem'));
        },
      ),
      appBar: AppBar(
        backgroundColor: AppColor.darker,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          color: AppColor.white,
          icon: Icon(Icons.apps),
          onPressed: () {},
        ),
        title: Text(
          'Monday, 12',
          style: TextStyle(color: AppColor.white),
        ),
        actions: [
          IconButton(
            color: AppColor.white,
            icon: Icon(FontAwesomeIcons.calendarAlt),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          children: [ProgressWidget()],
        ),
      ),
    );
  }
}

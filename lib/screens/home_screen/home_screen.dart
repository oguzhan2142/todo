import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/constants/colors.dart';
import 'package:todo/constants/values.dart';
import 'package:todo/models/project.dart';
import 'package:todo/screens/home_screen/widgets/progress/progress.dart';
import 'package:todo/screens/home_screen/widgets/projects/projects.dart';
import 'package:todo/screens/home_screen/widgets/tasks/tasks.dart';
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
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        margin: EdgeInsets.only(bottom: 80),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Progress(),
              SizedBox(height: Values.spaceBetweenHomepageComponents),
              Text(
                'Projects',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: Values.homeHeaderFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Values.spaceBetweenHomepageComponents),
              Projects(),
              SizedBox(height: Values.spaceBetweenHomepageComponents),
              Text(
                'Tasks',
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: Values.homeHeaderFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Values.spaceBetweenHomepageComponents),
              Tasks()
            ],
          ),
        ),
      ),
    );
  }
}

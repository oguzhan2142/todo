import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:todo/screens/home_screen/home_screen.dart';
import 'package:todo/screens/menu_screen/menu_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
          title: Text('mobx demo'),
        ),
        body: ZoomDrawer(
          controller: ZoomDrawerController(),
          style: DrawerStyle.DefaultStyle,
          menuScreen: MenuScreen(),
          mainScreen: HomeScreen(),
          borderRadius: 24.0,
          showShadow: true,
          angle: -12.0,
          backgroundColor: Colors.grey,
          slideWidth: MediaQuery.of(context).size.width * .65,
          openCurve: Curves.fastOutSlowIn,
          closeCurve: Curves.bounceIn,
        ),
      );
  }
}
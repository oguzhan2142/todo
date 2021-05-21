import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:todo/screens/home_screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('tr', null);
    return MaterialApp(
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}

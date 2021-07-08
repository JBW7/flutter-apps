import 'package:flutter/material.dart';
import 'package:trip_planner_app/screens/home.dart';
import 'package:trip_planner_app/screens/sandbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip Planner',
      home: Home(),
    );
  }
}

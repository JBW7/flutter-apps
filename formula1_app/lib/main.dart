import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';
import 'package:formula1_app/screen/constructor_bio_screen.dart';
import 'package:formula1_app/screen/constructor_screen.dart';
import 'package:formula1_app/screen/driver_screen.dart';
import 'screen/racing_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formula 1',
      home: DriverScreen(),
      // theme: ThemeData(fontFamily: 'Rajdhani'),
    );
  }
}
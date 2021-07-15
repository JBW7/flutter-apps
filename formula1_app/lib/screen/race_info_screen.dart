import 'package:flutter/material.dart';
import 'package:formula1_app/models/race_model.dart';

class RaceInfoScreen extends StatefulWidget {
  final Race race;

  RaceInfoScreen({required this.race});

  @override
  _RaceInfoScreenState createState() => _RaceInfoScreenState();
}

class _RaceInfoScreenState extends State<RaceInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 2000,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
        ),
      ),
    );
  }
}
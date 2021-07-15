import 'package:flutter/material.dart';
import 'package:formula1_app/widgets/racing_list_view.dart';

class RacingScreen extends StatefulWidget {

  @override
  _RacingScreenState createState() => _RacingScreenState();
}

class _RacingScreenState extends State<RacingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Racing'),
        backgroundColor: Colors.grey[850],
      ),
      body: SafeArea(
        child: RacingListView(),
      ),
    );
  }
}
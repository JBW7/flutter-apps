import 'package:flutter/material.dart';
import 'package:formula1_app/widgets/drivers_list_view.dart';

import 'constructor_screen.dart';

class DriverScreen extends StatefulWidget {

  @override
  _DriverScreenState createState() => _DriverScreenState();
}


class _DriverScreenState extends State<DriverScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Standings'),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            DriverListView(),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:formula1_app/widgets/drivers_list_view.dart';

class DriverScreen extends StatefulWidget {

  @override
  _DriverScreenState createState() => _DriverScreenState();
}


class _DriverScreenState extends State<DriverScreen> {

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver Standings'),
        backgroundColor: Colors.blue[700],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            DriverListView(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,

        onTap: (int value) {
          setState(() { 
            currentTab = value;  
          });
        },


        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
              size: 30,
              ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 30,
              ),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.flag,
              size: 30,
              ),
            label: ''
          )
        ],
      ),
    );
  }
}
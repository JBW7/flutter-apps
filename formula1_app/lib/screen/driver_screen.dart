import 'package:flutter/material.dart';
import 'package:formula1_app/widgets/drivers_list_view.dart';

import 'constructor_screen.dart';

class DriverScreen extends StatefulWidget {

  @override
  _DriverScreenState createState() => _DriverScreenState();
}


class _DriverScreenState extends State<DriverScreen> {

  int currentTab = 1;

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
      bottomNavigationBar: SizedBox(
        //height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: Colors.red,
          currentIndex: currentTab,
          onTap: (int value) {
            setState(() { 
              currentTab = value;
              print(currentTab);
              if(currentTab == 0)  {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => ConstructorScreen())
                );
              }
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
                size: 30,
                //color: Colors.white,
                ),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
                size: 30,
                //color: Colors.white,
                ),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.flag,
                size: 30,
                //color: Colors.white,
                ),
              label: ''
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:formula1_app/screen/constructor_screen.dart';
import 'package:formula1_app/screen/driver_screen.dart';
import 'package:formula1_app/screen/racing_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    ConstructorScreen(), DriverScreen(), RacingScreen(),
  ];

    int _selectedIndex = 0;

  void _onPageChanged (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _itemTapped (int _selectedIndex) {
    _pageController.jumpToPage(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[700],
        backgroundColor: Colors.white,
        onTap: _itemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.groups,
              size: 30,
              ),
            label: 'Constructors',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 30,
              ),
            label: 'Drivers'
          ),
          BottomNavigationBarItem(
          icon: Icon(
            Icons.flag,
            size: 30,
            ),
          label: 'Racing'
          )
        ],
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <IconData> _icons = [ // list of clickable icon buttons from font awesome icons flutter package
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // provide padding around the device so it doesnt interfere with its design
        child: ListView( // so that user can scroll through the page
        padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text( // screen title
                'What Would You Like To Find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

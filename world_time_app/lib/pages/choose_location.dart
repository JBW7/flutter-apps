import 'package:flutter/material.dart';

class choose_location extends StatefulWidget { 

  @override
  _choose_locationState createState() => _choose_locationState();
}

class _choose_locationState extends State<choose_location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),

      body: Text('Choose location'),
      
    );
  }
}
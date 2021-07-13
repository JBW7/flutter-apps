import 'package:flutter/material.dart';

class ConstructorScreen extends StatefulWidget {

  @override
  _ConstructorScreenState createState() => _ConstructorScreenState();
}

class _ConstructorScreenState extends State<ConstructorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constructors Standings'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ConstructorListView()
          ],
        ),
      ),
    );
  }
}
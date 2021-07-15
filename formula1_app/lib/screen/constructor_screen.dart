import 'package:flutter/material.dart';
import 'package:formula1_app/widgets/constructor_list_view.dart';

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
        backgroundColor: Colors.red,
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
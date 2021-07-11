import 'package:flutter/material.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
 
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( // so that picture of destination can be ontop of the listview
        children: <Widget>[
          Stack( // so that there could be text ontop of the picture
            children: <Widget> [
              Container(
                height: MediaQuery.of(context).size.width, // helps to provide a layout of the screen, width meaning width of the screen
                decoration: BoxDecoration( // rounded corners for the container widget for images
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ]
                ), 
              )
            ],
          )
        ],
      ),
    );
  }
}
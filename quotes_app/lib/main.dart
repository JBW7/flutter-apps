import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: quote_list()

  ));
}

class quote_list extends StatefulWidget {
  @override
  _quote_listState createState() => _quote_listState();
}

class _quote_listState extends State<quote_list> {
  
  List <String> quotes = [
    "It always seems impossible until it's done",
    "Failure is not the opposite of success, it's a part of success",
    "When something is important enough you do it even if the odds are not iy your favor",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Quotes"),
        centerTitle: true,
      ),

      body: Column(
        children: <Widget>[

        ],
      ),
      
    );
  }
}
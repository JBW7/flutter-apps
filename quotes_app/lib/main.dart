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
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text("Quotes"),
        centerTitle: true,
      ),
      
    );
  }
}
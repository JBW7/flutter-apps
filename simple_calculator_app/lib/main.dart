import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: home()

  ));
}

class home extends StatefulWidget {


  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 50),

        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Colors.blue[500]
              ),
            )
          ],
        ),

      ),


      
    );
  }
}





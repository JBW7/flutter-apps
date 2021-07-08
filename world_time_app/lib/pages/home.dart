import 'package:flutter/material.dart';

class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(

      body: SafeArea(
        
        child: Column(
          
          children: <Widget>[
            TextButton.icon(
              onPressed: () {

                Navigator.pushNamed(context, '/location');

              },
              
              icon: Icon(Icons.edit_location),
              label: Text ('Edit Location'),
            )
          ],
        ),
      ),
      
    );
  }
}
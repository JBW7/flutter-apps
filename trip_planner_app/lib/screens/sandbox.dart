import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class sandbox extends StatefulWidget {

  @override
  _sandboxState createState() => _sandboxState();
}

class _sandboxState extends State<sandbox> {
  
  
  double _opacity = 1;
  double _margin = 0;
  double _width = 220;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,

        child: Column (
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            SizedBox(
              height: 50,
            ),

            ElevatedButton(
              child: Text('animate margin'),
              onPressed: () => setState(() => _margin = 50),
            ),

            ElevatedButton(
              child: Text('Change color'),
              onPressed: () {
                setState(() {
                  _color = Colors.red;
                });
              },
            ),

            ElevatedButton(
              child: Text('animate width'),
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
            ),

            AnimatedOpacity(
              opacity: _opacity, 
              duration: Duration(seconds: 2),
              child: Text(
                'Hide me',
                style: TextStyle(color: Colors.white),
                ),  
                
            ),

            ElevatedButton(
              child: Text('animated opacity'),
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              } ,
            )

        ],)

      ),
      
    );
  }
}

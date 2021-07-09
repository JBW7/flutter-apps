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

      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          
          Container(
            height: 150,
            margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
            decoration: BoxDecoration(
              color: Colors.blue[500]
            ),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(
                      '23922342342',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),

          ),
          
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[500]),
            ),

            child:
            Text(
              '1',
              style: TextStyle(
                color: Colors.grey[200],
              ),
              
              )
          )
        ],

      ),


      
    );
  }
}





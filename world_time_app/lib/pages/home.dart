import 'package:flutter/material.dart';


class home extends StatefulWidget {

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    // set background image (day or night)
    String bg_image = data['is_day_time'] ? 'day.png' : 'night.png';
    Color bg_color = data['is_day_time'] ? Colors.blue[500] : Colors.indigo[700];
    
    return Scaffold(
      
      backgroundColor: bg_color,

      body: SafeArea(

        child: Container(
          
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/$bg_image'),
              fit: BoxFit.cover
            )
          ),
          
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          
            child: Column(
          
              children: <Widget>[
          
                TextButton.icon(
                  onPressed: () async {

                    dynamic result = await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'location': result['location'],
                        'is_day_time': result['is_day_time'],
                        'flag': result['flag']
                      };
                    });

                  },
                  
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300]
                    ),
                  label: Text (
                    'Edit Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                    ),
                ),
                
                SizedBox(
                  height: 20),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  data ['time'],
                  style: TextStyle(
                    fontSize: 66,
                    color: Colors.white
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
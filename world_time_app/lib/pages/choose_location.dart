import 'package:flutter/material.dart';

class choose_location extends StatefulWidget { 

  @override
  _choose_locationState createState() => _choose_locationState();
}

class _choose_locationState extends State<choose_location> {

  void get_data() async {

    // simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'verstappen';
    });

    // simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'f1 driver';
    });

  print('$username - $bio');

  }

  @override
  void initState() {
    super.initState();
    get_data();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),

      body: ElevatedButton(
        onPressed: () {
          setState(() {

          });
        },
 
      ),

 
      
    );
  }
}
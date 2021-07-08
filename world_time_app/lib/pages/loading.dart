import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';


class loading extends StatefulWidget {

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {


  void setup_world_time() async {
    world_time instance = world_time(location: 'New_York', flag: 'america.png', url: 'America/New_York');
    await instance.get_time();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setup_world_time();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text('loading'),
      ),
      
    );
  }
}
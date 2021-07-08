import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class choose_location extends StatefulWidget { 

  @override
  _choose_locationState createState() => _choose_locationState();
}

class _choose_locationState extends State<choose_location> {

   List<world_time> locations = [
	    world_time(url: 'Europe/London', location: 'London', flag: 'uk.png'),
	    world_time(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
	    world_time(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
	    world_time(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
	    world_time(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
	    world_time(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
	    world_time(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
	    world_time(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  void update_time(index) async {
    world_time instance = locations[index];
    await instance.get_time();

    //navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'is_day_time': instance.is_day_time,
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 4),
            child: Card(
              child: ListTile(
                onTap: () {
                  update_time(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/${locations[index].flag}'),
                ),
              ),
            ),
          );
          
        },
      ),

 
      
    );
  }
}
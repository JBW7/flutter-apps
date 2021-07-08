import 'package:http/http.dart';
import 'dart:convert';

class world_time {

  String location; // location label for the UI
  String time; // the time in that location
  String flag; // url to an assset flag icon
  String url; // location url for api endpoint

  world_time ({this.location, this.flag, this.url});

  Future <void> get_time() async {

    try{
      // make the request to api
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // get properties from data
      String date_time = data ['datetime'];
      String offset = data ['utc_offset'].substring(1, 3);

      // convert date_time to object
      DateTime now = DateTime.parse(date_time);
      now = now.add(Duration(hours: int.parse(offset)));
      
      // convert time to string
      time = now.toString();
    }
    catch (e) {
      print('Caught Error: $e');
    }

    

  }

}


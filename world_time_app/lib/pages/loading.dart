import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class loading extends StatefulWidget {

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

void get_data() async {

  // make the request to api
  Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/America/New_York'));
  Map data = jsonDecode(response.body);
  print(data);
  }

  @override
  void initState() {
    super.initState();
    get_data();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Text('loading screen'),
      
    );
  }
}
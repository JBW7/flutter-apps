import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class loading extends StatefulWidget {

  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

void get_data() async {

  Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  Map data = jsonDecode(response.body);
  print(data['title']);
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
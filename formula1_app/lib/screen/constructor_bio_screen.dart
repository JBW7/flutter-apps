import 'package:flutter/material.dart';
import 'package:formula1_app/models/constructors_model.dart';

class ConstructorBioScreen extends StatefulWidget {

  final Constructor constructor;

  ConstructorBioScreen({required this.constructor});

  @override
  _ConstructorBioScreenState createState() => _ConstructorBioScreenState();
}

class _ConstructorBioScreenState extends State<ConstructorBioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image(
                image: AssetImage('assets/images/driver_profile_bg_darken.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 4,
                        decoration: BoxDecoration(
                          color: Colors.blue[800]
                        ),
                      ),
                      Padding()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
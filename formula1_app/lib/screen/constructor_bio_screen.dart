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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 1500,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[850],
              child: Stack(
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
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: Column(
                        children: [
                          Container(
                            height: 88,
                            width: 400,
                            //color: Colors.white,
                            child: Container(
                              child: Row(
                                children: [
                                  Container(
                                    height: 88,
                                    width: 4,
                                    color: Colors.blue[800],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.constructor.name,
                                              style: TextStyle(
                                                fontSize: 32,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                              ),
                                            ),
                                            Image(
                                              image: AssetImage(widget.constructor.logoUrl),
                                              height: 50,
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 125.0),
                            child: Image(
                              image: AssetImage(widget.constructor.carUrl),
                              height: 75,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ], 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
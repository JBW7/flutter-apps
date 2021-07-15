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
              color: Colors.white,
              child: Column(
                children: [
                  Stack(
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
                                        color: widget.constructor.color,
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
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'Achievements',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Container(
                          height: 320,
                          width: 228,
                          color: Colors.blue,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Victories',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Pole Positions',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Fastest Laps',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Constructor Championships',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 80),
                        child: Container(
                          height: 320,
                          width: 100,
                          color: Colors.red,
                        ),
                      )
                    ],
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
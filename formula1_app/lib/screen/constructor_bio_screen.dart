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
              height: 1650,
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
                    padding: EdgeInsets.only(top: 15, bottom: 10),
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
                          height: 280,
                          width: 228,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                  fontSize: 28,
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
                          height: 280,
                          width: 100,
                          color: Colors.white,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 22),
                                child: Text(
                                  widget.constructor.wins,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 22),
                                child: Text(
                                  widget.constructor.polePositions,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 22),
                                child: Text(
                                  widget.constructor.fastestLaps,
                                  style: TextStyle(
                                    fontSize: 30, 
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  widget.constructor.constructorChampionships,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25, top: 25),
                    child: Text(
                      'Team',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (_) => DriverBioScreen(driver: driver))
                                  // );
                                },
                                child: Container(
                                  width: 200,
                                  height: 275,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.grey[200]
                                  ),
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(widget.constructor.driver1Url),
                                        height: 200,
                                        width: 200,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          widget.constructor.driver1_fname,
                                          style: TextStyle(
                                            fontSize: 20
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.constructor.driver1_lname,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (_) => DriverBioScreen(driver: driver))
                                  // );
                                },
                                child: Container(
                                  width: 200,
                                  height: 275,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey[200]
                                  ),
                                  child: Column(
                                    children: [
                                      Image(
                                        image: AssetImage(widget.constructor.driver2Url),
                                        height: 200,
                                        width: 200,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text(
                                          widget.constructor.driver2_fname,
                                          style: TextStyle(
                                            fontSize: 20
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.constructor.driver2_lname,
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                                child: Image(
                                  image: AssetImage(
                                    widget.constructor.carUrl
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: Text(
                                        'Team Chief',
                                        style: TextStyle(
                                          fontSize: 22
                                        ),
                                      ),
                                    ),
                                    Text(
                                      widget.constructor.teamChief,
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Chasis',
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      widget.constructor.chasis,
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'Power Unit',
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      widget.constructor.powerUnit,
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Image(
                          image: AssetImage(widget.constructor.logoUrl),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
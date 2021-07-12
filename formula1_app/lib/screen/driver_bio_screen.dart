import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';


class DriverBioScreen extends StatefulWidget {

  final Driver driver;

  DriverBioScreen({required this.driver});

  @override
  _DriverBioScreenState createState() => _DriverBioScreenState();
}

class _DriverBioScreenState extends State<DriverBioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                      
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image(
                        image: AssetImage('assets/images/driver_profile_bg_darken.jpg'),
                        fit: BoxFit.cover,
                      )
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
                      padding: const EdgeInsets.only(top: 0, left: 20),
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
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.driver.firstName,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white
                                      ),
                                    ),
                                    Text(
                                      widget.driver.lastName,
                                      style: TextStyle(
                                        fontSize: 32,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          widget.driver.number,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          ' | ${widget.driver.team}',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          // Image(
                          //   image: AssetImage('assets/images/AntonioGiovinazzi_img.png'),
                          //   height: 200, // 200
                          //   width: 200, //200
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    "Achievements",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 400,
                          width: 228,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Wins',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Podiums',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'DHL Fastest Laps',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'Grands Prix Entered',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                'World Championships',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 80),
                          child: Container(
                            height: 400,
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 29),
                                  child: Text(
                                    (widget.driver.wins),
                                    style: TextStyle(
                                      fontSize: 30
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 29),
                                  child: Text(
                                    widget.driver.podiums,
                                    style: TextStyle(
                                      fontSize: 30
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 25),
                                  child: Text(
                                    widget.driver.fastestLap,
                                    style: TextStyle(
                                      fontSize: 30
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 40),
                                  child: Text(
                                    widget.driver.gpEntered,
                                    style: TextStyle(
                                      fontSize: 30
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 59),
                                  child: Text(
                                    widget.driver.worldchampionships,
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Team',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

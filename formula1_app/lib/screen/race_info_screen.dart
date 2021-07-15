import 'package:flutter/material.dart';
import 'package:formula1_app/models/race_model.dart';

class RaceInfoScreen extends StatefulWidget {
  final Race race;

  RaceInfoScreen({required this.race});

  @override
  _RaceInfoScreenState createState() => _RaceInfoScreenState();
}

class _RaceInfoScreenState extends State<RaceInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 1250,
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
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.black38, BlendMode.colorBurn),
                        child: Image(
                          image: AssetImage(widget.race.backgroundUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    ),
                  ),
                  Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.race.location,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '2021',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: 70,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  width: 1
                                )
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image(
                                  image: AssetImage(widget.race.flagUrl),
                                  width: 85,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            widget.race.venue,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 20),
                child: Image(
                  image: AssetImage(widget.race.trackUrl),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 15),
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Circuit Length',
                        style: TextStyle(
                          fontSize: 20
                        ),
                      ),
                      Container(
                        height: 40,
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.race.circuitLength,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'km',
                              style: TextStyle(
                                fontSize: 20
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'First Grand Prix',
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ),
                      Text(
                        widget.race.firstGp,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Number of Laps',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        widget.race.noLaps,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Race Distance',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.race.raceDistance,
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'km',
                              style: TextStyle(
                                fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          'Lap Record',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        widget.race.lapRecordTime,
                        style: TextStyle(
                          fontSize: 40, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        widget.race.lapRecordHolderYear,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:formula1_app/models/race_model.dart';
import 'package:formula1_app/screen/race_info_screen.dart';

class RacingListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 730,
      color: Colors.grey[850],
      child: ListView.builder(
        itemCount: races.length,
        itemBuilder: (BuildContext context, int index) {
          Race race = races[index];
          return GestureDetector(
            onTap: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (_) => RaceInfoScreen(race: race))
             );
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
              width: 320,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Container(
                              height: 50,
                              width: 70,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Text(
                                    race.date,
                                    style: TextStyle(
                                      fontSize: 19
                                    ),
                                  ),
                                  Container(
                                    height: 22,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                      child: Text(
                                        race.month
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Container(
                              height: 50,
                              width: 2,
                              color: Colors.grey[300],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  race.round,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.red
                                  ),
                                ),
                                Text(
                                  race.location,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
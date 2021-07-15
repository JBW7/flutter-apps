import 'package:flutter/material.dart';
import 'package:formula1_app/models/race_model.dart';

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
          return Container(
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
                          padding: EdgeInsets.only(left: 15),
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
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
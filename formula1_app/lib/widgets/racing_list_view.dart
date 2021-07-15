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
          );
        },
      ),
    );
  }
}
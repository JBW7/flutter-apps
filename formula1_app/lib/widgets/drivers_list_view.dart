import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';

class DriverListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 700,
            color: Colors.blue,
            child: ListView.builder(
              itemCount: drivers.length,
              itemBuilder: (BuildContext context, int index) {
                Driver driver = drivers[index];
                return Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  width: 300,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 200,
                    height: 75,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            driver.rank,
                            style: TextStyle(
                              fontSize: 22
                            ),
                          ),
                        ),
                        Container(
                          width: 4,
                          height: 50,
                          color: Colors.blue[800],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  driver.name,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                Text(
                                  driver.team,
                                  style: TextStyle(
                                    fontSize: 15
                                  ),
                                ),
                              ],
                            ),
                          Container(
                            width: 70,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      driver.points,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                      (' PTS'),
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.blue[800],
                              size: 16,
                            ),
                          )
                          ],
                        ),
                      ],
                    ),
                  ),
          
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
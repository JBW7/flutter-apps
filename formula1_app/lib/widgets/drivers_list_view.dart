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
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
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
                      Column(
                        children: [
                          Text(
                            driver.name
                            ),
                          Text(driver.team)
                        ],
                      )
                    ],
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
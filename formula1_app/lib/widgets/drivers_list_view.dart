import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';
import 'package:formula1_app/screen/driver_bio_screen.dart';

class DriverListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Container(
        height: 730,
        color: Colors.grey[850],
        child: ListView.builder(
          itemCount: drivers.length,
          itemBuilder: (BuildContext context, int index) {
            Driver driver = drivers[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => DriverBioScreen(driver: driver,))
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
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Container(
                            color: Colors.white,
                            width: 28,
                            child: Text(
                              driver.rank,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Container(
                            width: 4,
                            height: 50,
                            color: driver.color,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 22,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                'PTS',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 4, right: 8),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
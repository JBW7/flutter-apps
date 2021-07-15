import 'package:flutter/material.dart';
import 'package:formula1_app/models/constructors_model.dart';
import 'package:formula1_app/screen/constructor_bio_screen.dart';

class ConstructorListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 730,
      color: Colors.grey[850],
      child: ListView.builder(
        itemCount: constructors.length,
        itemBuilder: (BuildContext context, int index) {
          Constructor constructor = constructors[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ConstructorBioScreen(constructor: constructor,))
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
                          width: 25,
                          child: Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Text(
                              constructor.rank,
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Container(
                          width: 4,
                          height: 50, 
                          color: constructor.color,
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
                            constructor.name,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            '${constructor.driver1_lname} / ${constructor.driver2_lname}',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
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
                              constructor.points,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'PTS',
                              style: TextStyle(
                                fontSize: 15
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4, right: 8),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[600],
                          size: 16,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
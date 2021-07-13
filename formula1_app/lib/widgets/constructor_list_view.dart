import 'package:flutter/material.dart';
import 'package:formula1_app/models/constructors_model.dart';

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
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          constructor.rank,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Container(
                          width: 4,
                          height: 50, 
                          color: Colors.blue[800],
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
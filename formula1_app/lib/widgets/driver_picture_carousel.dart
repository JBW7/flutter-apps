import 'dart:html';

import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';

/*
class DriverPictureCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (BuildContext context, int index) {
          Driver driver = drivers[index];
          return Container(
            margin: EdgeInsets.fromLTRB(8, 8, 0, 8),
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(driver.image6url),
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      ),
    );
  }
}
*/

class DriverPictureCarousel extends StatelessWidget {

  final Driver driver;
  DriverPictureCarousel({required this.driver});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  driver.image1url
                ),
                fit: BoxFit.cover,
              ),
            ),
        ),
          ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  driver.image2url
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(
                driver.image3url
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  driver.image4url
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          width: 270,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(
                driver.image5url
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 20),
          child: Container(
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  driver.image6url
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        ],
      )
    );
  }
}
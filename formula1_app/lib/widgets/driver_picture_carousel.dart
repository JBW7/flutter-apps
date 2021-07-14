import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_picture_carousel_model.dart';

class DriverPictureCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pictureCarousels.length,
        itemBuilder: (BuildContext context, int index) {
          PictureCarousel pictureCarousel = pictureCarousels[index];
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
                image: AssetImage(pictureCarousel.maxVerstappen),
                fit: BoxFit.cover,
              ),
            ),
          );
        }
      ),
    );
  }
}
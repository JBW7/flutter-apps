import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationScreen extends StatefulWidget {
 
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column( // so that picture of destination can be ontop of the listview
        children: <Widget>[
          Stack( // so that there could be text ontop of the picture
            children: <Widget> [
              Container(
                height: MediaQuery.of(context).size.width, // helps to provide a layout of the screen, width meaning width of the screen
                decoration: BoxDecoration( // rounded corners for the container widget for images
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    )
                  ]
                ), 
                child: Hero( // widget to animate destination picture
                  tag: widget.destination.imageUrl, // specifiy which widget to animate
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0), // rounding corners
                    child: Image( // display image onto the screen
                      image: AssetImage(widget.destination.imageUrl),
                      fit: BoxFit.cover, 
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row( // buttons ontop of image
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // push buttons to each side
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back), // back arrow button
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.search), // search button
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.sortAmountDown), // sort amount down icon
                          iconSize: 25.0,
                          color: Colors.black,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned( // give some spacing with the border of the device
                left: 20.0, // 20 pixels from the left
                bottom: 20.0, // 20 pixels from the bottom
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget> [
                    Text( // city text above the image
                      widget.destination.city,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ), 
                    Row(
                      
                      children: <Widget>[
                        Icon( // location arrow icon before the country text
                          FontAwesomeIcons.locationArrow,
                          size: 10.0,
                          color: Colors.white70,
                        ),
                          
                        SizedBox(
                          width: 5.0,
                        ),
                          
                        Text( // country text above the image
                          widget.destination.country,
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ) 
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  color: Colors.white70,
                  size: 25.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
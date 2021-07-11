import 'package:flutter/material.dart';
import 'package:travel_app/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Column(
              children:  <Widget> [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // so that the two titles is split up to each side

                    children: [
                      Text(
                        'Exclusive Hotels',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        ),

                      // See all title
                      GestureDetector( // making text widget clickable
                        onTap: () {
                          print('see all');
                        },
                        child: Text(
                          'See All',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColor, // set color the same as the primary theme of this app
                            letterSpacing: 1.0,
                          ),
                          ),
                      ),
                    ],
                  ),
                ),

                // the carousel itself
                Container( // container to house the carousel
                  height: 300.0,
                  child: ListView.builder( // displays carousel in a list view and allowing user to scroll through the list
                    scrollDirection: Axis.horizontal, // change scroll direction from vertical to horizontal
                    itemCount: hotels.length, // number of items based on number of destinations in destination_model.dart
                    itemBuilder: (BuildContext context, int index){
                      Hotel hotel = hotels[index]; // assign destination to a destinaton from destinations list
                      return Container( // container to host containers for each container destination
                        margin: EdgeInsets.all(10.0),
                        width: 240.0,
                        child: Stack( // stacking allows widgets to be positioned on top of each other
                          alignment: Alignment.topCenter, // so that widget is in the center of the container
                          children: <Widget>[
                            Positioned( // so that the text container is under the images container
                              bottom: 15.0, // 15 pixels from the bottom of the container
                              child: Container( // each container for each destination's text
                                height: 120.0,
                                width: 240.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0), // make the text container have rounded corners
                                ),
                                
                                child: Padding(
                                  padding: EdgeInsets.all(10.0), // give some spacing between text and the edge of container
                                  
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end, // so that text is now in the bottom of the container
                                    crossAxisAlignment: CrossAxisAlignment.center, // so that text is aligned in the middle
                                    children: <Widget>[
                                      Text( // display number of activites in the destination taken from destination_model.dart Destinations class
                                        hotel.name, // the name of the hotel
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                        ),
                                      ), 


                                      SizedBox(
                                        height: 2.0,
                                      ),

                                      Text( // display the description of activity in the destination taken from destination_model.dart Destinations class
                                        hotel.address, // display the address of the hotel
                                        style: TextStyle(
                                          color: Colors.grey
                                        ),
                                      ),

                                      SizedBox(
                                        height: 2.0,
                                      ),

                                      Text( // display the price of each hotel
                                        '\$${hotel.price} / night',
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0), // so that the container have rounded corners
                                boxShadow: [ // so that the container have a shadow under it
                                  BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0), // shadow moves down 0 at the axis and 2 pixels in the y axis
                                    blurRadius: 6.0,
                                    )
                                  ] 
                              ),
                              
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image( // the image of destination
                                  height: 180.0,
                                  width: 220.0,
                                  image: AssetImage(hotel.imageUrl), // taken from class destination from destination_model.dart
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }
                  ),
                )
              ],
            );
  }
}

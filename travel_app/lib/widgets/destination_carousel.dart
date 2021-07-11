import 'package:flutter/material.dart';


class DestinationCarousel extends StatelessWidget {

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
                        'Top Destinations',
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
              ],
            );
  }
}


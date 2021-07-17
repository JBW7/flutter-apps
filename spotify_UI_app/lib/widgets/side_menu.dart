import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Image.asset(
            'assets/spotify_logo.png',
            height: 55,
            filterQuality: FilterQuality.high,
          ),
        ],
      ),
    );
  }
}
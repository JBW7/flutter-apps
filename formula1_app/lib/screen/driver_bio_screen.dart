import 'package:flutter/material.dart';

class DriverBioScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: AssetImage('assets/images/driver_profile_bg_darken.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Text(driver.name)
            ],
          )
        ],
      )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:formula1_app/models/driver_model.dart';

class DriverListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            height: 700,
            color: Colors.blue,
            child: ListView.builder(
              itemCount: drivers.length,
              itemBuilder: (BuildContext context, int index) {
                Driver driver = drivers[index];
                return Container(
                  margin: EdgeInsets.fromLTRB(8, 8, 8, 0),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
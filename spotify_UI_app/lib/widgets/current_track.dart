import 'package:flutter/material.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84,
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Row(
          children: [
            _TrackInfo()
          ],
        ),
      ),
    );
  }
}

class _TrackInfo extends StatelessWidget {
  const _TrackInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
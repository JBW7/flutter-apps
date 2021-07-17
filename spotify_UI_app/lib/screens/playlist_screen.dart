import 'package:flutter/material.dart';
import 'package:spotify_UI_app/data/data.dart';

class PlaylistScreen extends StatefulWidget {

  final Playlist playlist; //click generate constructor

  const PlaylistScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ,
    );
  }
}
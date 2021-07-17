import 'package:flutter/material.dart';
import 'package:spotify_UI_app/data/data.dart';
import 'package:spotify_UI_app/widgets/widgets.dart';

class PlaylistScreen extends StatefulWidget {

  final Playlist playlist; //click generate constructor

  const PlaylistScreen({Key? key, required this.playlist}) : super(key: key);

  @override
  _PlaylistScreenState createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {

  ScrollController? _scrollController;
  
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 140,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder:  const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26, 
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.chevron_left,
                    size: 28,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              InkWell(
                customBorder:  const CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26, 
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(primary: Theme.of(context).iconTheme.color),
            onPressed: () {}, 
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: Text(
              'Elon Musk',
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              icon: Icon(Icons.keyboard_arrow_down, 
              size: 30,
            ),
            onPressed: () {},
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFAF1018),
              Theme.of(context).backgroundColor
            ],
            stops: [0, 0.3]
          )
        ),
        child: Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: ListView(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(
              horizontal: 20, 
              vertical: 60
            ),
            children: [
              PlaylistHeader(playlist : widget.playlist),
              TrackList(tracks: widget.playlist.songs),
            ],
          ),
        ),
      ),
    );
  }
}
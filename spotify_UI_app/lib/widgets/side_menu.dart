import 'package:flutter/material.dart';
import 'package:spotify_UI_app/data/data.dart';

class SideMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'assets/spotify_logo.png',
                  height: 55,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
          SideMenuIconTab(
            iconData: Icons.home,
            title: 'Home',
            onTap: () {}
          ),
          SideMenuIconTab(
            iconData: Icons.search,
            title: 'Search',
            onTap: () {}
          ),
          SideMenuIconTab(
            iconData: Icons.audiotrack,
            title: 'Radio',
            onTap: () {}
          ),
          SizedBox(
            height: 12,
          ),
          LibraryPlaylist(),
        ],
      ),
    );
  }
}

class SideMenuIconTab extends StatelessWidget {

  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const SideMenuIconTab({ 
    Key? key,

    required this.iconData,
    required this.title,
    required this.onTap,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).iconTheme.color,
        size: 28,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}

class LibraryPlaylist extends StatefulWidget {
  const LibraryPlaylist({ Key? key }) : super(key: key);

  @override
  _LibraryPlaylistState createState() => _LibraryPlaylistState();
}

class _LibraryPlaylistState extends State<LibraryPlaylist> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 12),
        physics: const ClampingScrollPhysics(), // remove bouncing effect of scrolling,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Your Library',
                  style: Theme.of(context).textTheme.headline4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...yourLibrary.map(
                (e) => ListTile(
                dense: true,
                title: Text(e, 
                style: Theme.of(context).textTheme.bodyText2,
                overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
                )
              ).toList()
            ],
          ),
          SizedBox(
            height: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'Playlists',
                  style: Theme.of(context).textTheme.headline4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              ...playlists.map(
                (e) => ListTile(
                dense: true,
                title: Text(e, 
                style: Theme.of(context).textTheme.bodyText2,
                overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
                )
              ).toList()
            ],
          )
        ],
      ),
    );
  }
}


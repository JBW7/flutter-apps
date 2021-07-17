import 'package:flutter/material.dart';
import 'package:spotify_UI_app/data/data.dart';

class PlaylistHeader extends StatelessWidget {

  final Playlist playlist;

  const PlaylistHeader({ Key? key , required this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            playlist.imageURL,
          ),
          height: 200,
          width: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Playlist',
                style: Theme.of(context)
                .textTheme.overline!
                .copyWith(
                  fontSize: 12
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                playlist.name,
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                playlist.description,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:spotify_UI_app/data/data.dart';

class TrackList extends StatelessWidget {
  
  final List<Song> tracks;

  const TrackList({ Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(
          label: Text('Title')
        ),
        DataColumn(
          label: Text('Artist')
        ),
        DataColumn(
          label: Text('Album')
        ),
        DataColumn(
          label: Icon(Icons.access_time)
        ),
      ],
      rows: tracks.map((e) { // e is the song
        return DataRow(
          cells: [
            DataCell(
              Text(
                e.title,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                )
              )
            ),
            DataCell(
              Text(
                e.artist,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                )
              )
            ),
            DataCell(
              Text(
                e.album,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                )
              )
            ),
            DataCell(
              Text(
                e.duration,
                style: TextStyle(
                  color: Theme.of(context).iconTheme.color,
                )
              )
            )
          ]
        );
      }).toList()
    );
  }
}
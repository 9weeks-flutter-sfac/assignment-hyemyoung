// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MusicTile extends StatelessWidget {
  const MusicTile(
      {super.key,
      required this.title,
      required this.artist,
      required this.duration,
      required this.albumImg});

  final String title;
  final String artist;
  final String duration;
  final String albumImg;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(albumImg),
      ),
      title: Text(
        title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: 16,
          ),
          SizedBox(width: 4),
          Flexible(
              child: Text(
            artist,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          )),
          SizedBox(width: 4),
          Text(duration),
        ],
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}

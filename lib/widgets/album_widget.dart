import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  Map? album;
  AlbumWidget({Key? key, this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Column(
        children: [
          Text(
            // AlbumId is int
            album!['albumId'].toString(),
            style: TextStyle(fontSize: 20),
          ),
          Image.network(
            // url is a string
            album!['url'],
            height: 400,
            width: 400,
          ),
        ],
      ),
    );
  }
}

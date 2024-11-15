import 'package:flutter/material.dart';
import 'package:flutter_1/models/albums.dart';

class MemberAlbums extends StatelessWidget {
  final Albums albums;

  MemberAlbums({super.key, required this.albums});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.collections),
              SizedBox(width: 20),
              Text('Album')
            ],
          ),
          backgroundColor: Colors.deepPurple[300],
          foregroundColor: Colors.white,
        ),
        body: Row(
          children: [
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text('UserId: ${albums.userId}'),
                Text('Id: ${albums.id}'),
                Text('Title: ${albums.title}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

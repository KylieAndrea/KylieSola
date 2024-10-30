import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/photos.dart';

class Member extends StatelessWidget {
  final Photos photo;
  Member({required this.photo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('USUARIO'),
          backgroundColor: Colors.deepPurple[300],
          foregroundColor: Colors.white,
        ),
        body: Row(
          children: [
            Icon(
              Icons.account_box_rounded,
              size: 200,
              color: Colors.blueGrey[100],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('AlbumId: ${photo.albumId}'),
                Text('Id: ${photo.id}'),
                Text('Title: ${photo.title}'),
                Text('Url: ${photo.url}'),
                Text('ThumbnailUrl: ${photo.thumbnailUrl}'),
                ],
            )
          ],
        ),
      ),
    );
  }
}
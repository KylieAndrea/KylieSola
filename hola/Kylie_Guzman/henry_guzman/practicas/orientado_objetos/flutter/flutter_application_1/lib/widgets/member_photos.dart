import 'package:flutter/material.dart';
import 'package:flutter_1/models/photo.dart';
import 'package:flutter_application_1/models/photos.dart';

class MemberPhotos extends StatelessWidget {
  final Photos photo;

  MemberPhotos({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.account_circle_outlined),
              SizedBox(width: 20),
              Text('Usuario')
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
                SizedBox(height: 20),
                Image.network(
                  '${photo.url}',
                  width: 100.0,
                ),
                SizedBox(
                  height: 15,
                ),
                Text('AlbumId: ${photo.albumId}'),
                Text('Id: ${photo.id}'),
                Text('Title: ${photo.title}'),
                Text('Url: ${photo.url}'),
                Text('ThumbnailUrl: ${photo.thumbnailUrl}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_1/models/photos.dart';

class MemberPhotos extends StatelessWidget {
  final Photos photos;

  MemberPhotos({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.camera_alt),
              SizedBox(width: 20),
              Text('Foto')
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
                  '${photos.url}',
                  width: 100.0,
                ),
                SizedBox(
                  height: 15,
                ),
                Text('AlbumId: ${photos.albumId}'),
                Text('Id: ${photos.id}'),
                Text('Title: ${photos.title}'),
                Text('Url: ${photos.url}'),
                Text('ThumbnailUrl: ${photos.thumbnailUrl}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(Member());
}

class Member extends StatelessWidget {
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
                Text('AlbumId: '),
                Text('Id: '),
                Text('Title: '),
                Text('Url: '),
                Text('ThumbnailUrl: '),
                ],
            )
          ],
        ),
      ),
    );
  }
}
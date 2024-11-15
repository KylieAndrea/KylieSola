import 'package:flutter/material.dart';
import 'package:flutter_1/models/comments.dart';

class MemberCommenst extends StatelessWidget {
  final Comments comments;

  MemberCommenst({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.comment_rounded),
              SizedBox(width: 20),
              Text('Comentario')
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
                Text('PostId: ${comments.postId}'),
                Text('Id: ${comments.id}'),
                Text('Name: ${comments.name}'),
                Text('Email: ${comments.email}'),
                Text('Body: ${comments.body}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

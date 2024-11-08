import 'package:flutter/material.dart';
import 'package:flutter_1/models/posts.dart';

class MemberPosts extends StatelessWidget {
  final Posts posts;

  MemberPosts({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.account_circle_outlined),
              SizedBox(width: 20),
              Text('Post')
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
                Text('UserId: ${posts.userId}'),
                Text('Id: ${posts.id}'),
                Text('Title: ${posts.title}'),
                Text('Body: ${posts.body}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

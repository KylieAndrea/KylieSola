import 'package:flutter/material.dart';
import 'package:flutter_1/models/users.dart';

class MemberUsers extends StatelessWidget {
  final Users users;

  MemberUsers({
    super.key,
    required this.users,
  });

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
                SizedBox(
                  height: 30,
                ),
                Text('user'),
                Text('Id: ${users.id}'),
                Text('Name: ${users.name}'),
                Text('username: ${users.username}'),
                Text('Email: ${users.email}'),
                Text('Address: ${users.address}'),
                Text('Phone: ${users.phone}'),
                Text('Website: ${users.website}'),
                Text('Company: ${users.company}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

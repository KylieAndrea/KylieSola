import 'package:flutter/material.dart';

void main() {
  runApp(User());
}

class User extends StatelessWidget {
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
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
                Text('hola'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
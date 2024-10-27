import 'package:flutter/material.dart';

void main(){
  runApp(MyProgram());
}

class MyProgram extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY PRIMER PROGRAMA',
      home: Scaffold(
        appBar: AppBar(title: Text('NICOLE')),
        body: Column(
          children: [
          ],
        )
      ),
    );
  }
}
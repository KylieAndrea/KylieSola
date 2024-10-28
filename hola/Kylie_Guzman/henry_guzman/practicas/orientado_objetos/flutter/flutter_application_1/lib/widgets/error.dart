import 'package:flutter/material.dart';

void main(){
  runApp(Error());
}

class Error extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text('ERROR.'),
              Icon(Icons.error)
            ],
          )
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main(){
  runApp(MyProgram());
}

class MyProgram extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY PRIMER PROGRAMA',
      home: Scaffold(
        appBar: AppBar( 
          title: Center(child: Text('INICIO')),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        body: Center(child: Column(
          children: [ 
            SizedBox(height: 10),
            Text('Ingrese numero de usuario'),
            SizedBox(height: 5),
            SizedBox(
              width: 150,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.account_circle_rounded),
                  border: OutlineInputBorder(),
                  labelText: 'Numero',
                ),
              ),
            ),
          ],
        )
      ),
    )
   );
  }
}
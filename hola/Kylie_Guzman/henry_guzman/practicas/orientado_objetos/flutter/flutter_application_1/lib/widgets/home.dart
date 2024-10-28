import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MY PRIMER PROGRAMA',
      home: Scaffold(
        appBar: AppBar( 
          title: Center(child: Text('INICIO')),
          backgroundColor: Colors.deepPurple[400],
          foregroundColor: Colors.white,
        ),
        body:Column(
          children: [
            SizedBox(height: 40,),
            Text('ingrese numero de usuario'),
            SizedBox(height: 12,),
            Row( 
              children: [
                 SizedBox(width: 130),
                Icon(
                  Icons.account_circle_outlined,
                  color: Colors.deepPurple[300],
                  size: 30
                ),
                SizedBox(width: 12),
                SizedBox(
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(),
                      labelText: 'Numero'
                    ),
                  ),
                ),
                SizedBox(width: 12,),
                ElevatedButton(
                  onPressed:(){}, 
                  child: Text('Buscar'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.deepPurple[300],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(300)
                    )
                  )
                )
              ] 
            )
          ],
        )
      ) 
    );
  }
}
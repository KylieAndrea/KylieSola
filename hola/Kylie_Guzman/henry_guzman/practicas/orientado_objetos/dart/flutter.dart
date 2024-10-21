import 'package:flutter/material.dart';

void main(){
  runApp(MyProgram());
}

class MyProgram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KYLIE',
      home: Scaffold(
        body: Column(
          children: [
            Image.network(
              'https://media.giphy.com/media/65LrvAMGU560TvPgs5/giphy.gif?raw=true',
            ), 
              Icon(
                Icons.favorite,
                color: Colors.purple,
                size: 50.0,
                semanticLabel: 'text'),
          
          Text('ID: 1'),
          Text('Name: Kylie Guzman'),
          Text('Username: KylieAndrea'),
          Text('Email: kylieguzmanh@gmail.com'),
          Text('address: Kra 7 sur #89-30'),
          Text('iphone: 3014886287'),
          Text('website: web'),
          Text('company: Sena'),
          ElevatedButton(onPressed: (){}, child: Text('listo')),
          CircularProgressIndicator()
        ],
      ),
    )
    );
  }
}
import 'package:flutter/material.dart';

class Error extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        //appBar: AppBar(
          //backgroundColor: Colors.blueGrey[200],
          //foregroundColor: Colors.blueGrey[200],
        //),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error_outlined,
                  color: Colors.blueGrey[300],
                ),
                Text(
                  'ERROR',
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.blueGrey[300]
                  )
                ),
              ],
            )
          ),
      ),
    );
  }
}
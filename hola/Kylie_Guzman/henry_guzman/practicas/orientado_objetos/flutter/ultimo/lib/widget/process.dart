import 'package:flutter/material.dart';

class Process extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 270,
                ),
                Text('Cargando datos...',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white,
                    )),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.deepPurple[300],
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                )
              ],
            ),
          )),
    );
  }
}

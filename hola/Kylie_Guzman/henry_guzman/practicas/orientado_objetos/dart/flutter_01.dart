//programa principal
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main(){
  runApp(MyProgram());
}

class MyProgram extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'registro',
    home: Scaffold(
      appBar: AppBar(title: Text('MY PROGRAMA')),
      body: HomePage()
    )
  );
}
}
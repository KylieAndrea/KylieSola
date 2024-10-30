import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_application_1/models/photos.dart';
import 'package:flutter_application_1/widgets/home.dart';
import 'package:flutter_application_1/widgets/member.dart';
import 'package:flutter_application_1/widgets/process.dart';


void main()async{
  runApp(MyProgram());
  var url = Uri.https('https://jsonplaceholder.typicode.com', 'photos/1');
  var response = await http.get(url);
  Photos a1 = Photos(response.body);
}

class MyProgram extends StatelessWidget{
  Future<String> hola() async{
    await Future.delayed(Duration(seconds: 3));
    return 'Cargando...';
  }
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mi Programa Dart',
      home: Scaffold(
        body: FutureBuilder(
          future: hola(),
          builder: (BuildContext (context, AsyncSnapshot<String> snapshot)){
            if(snapshot.){
            }else if(snapshot.connectionState == ConnectionState.waiting){
              return Process();
            }else if(snapshot.hasError){
              return Error();
            }else{
              return Member();
            }
          }
        )
      )
    );
  }
}
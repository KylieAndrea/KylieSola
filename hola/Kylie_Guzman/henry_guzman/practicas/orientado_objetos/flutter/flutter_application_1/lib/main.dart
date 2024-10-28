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

  

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mi Programa Dart',
      home: Scaffold(),
    );
  }
}
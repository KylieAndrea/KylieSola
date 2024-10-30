import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_application_1/models/photos.dart';
import 'package:flutter_application_1/widgets/home.dart';
import 'package:flutter_application_1/widgets/member.dart';
import 'package:flutter_application_1/widgets/process.dart';
import 'package:flutter_application_1/widgets/error.dart';


void main()async{
  runApp(MyProgram());
}

class MyProgram extends StatelessWidget{
  Future<Photos> fetchPhoto() async{
      await Future.delayed(Duration(seconds: 3));
      var url = Uri.https('https://jsonplaceholder.typicode.com', 'photos/1');
      var response = await http.get(url);
      if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error');
    }
  }
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Mi Programa Dart',
      home: Scaffold(
        body: FutureBuilder(
          future: fetchPhoto(),
          builder: (BuildContext context, AsyncSnapshot<Photos> snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Process();
            }else if(snapshot.hasError){
              return Error();
            }else{
              Photos hola = snapshot.data!;
              return Member(photo: hola,);
            }
          }
        )
      )
    );
  }
}
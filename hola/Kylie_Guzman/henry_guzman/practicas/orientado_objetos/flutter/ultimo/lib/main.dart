import 'package:flutter/material.dart';
import 'package:flutter_1/models/photo.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class MyProgram extends StatelessWidget {
  final int id;

  const MyProgram({super.key, required this.id});

  Future<Photo> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Photo(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Photo>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Photo> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Photo p = snapshot.data!;
            return Member(photo: p);
          }
        },
      ),
    );
  }
}

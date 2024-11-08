import 'package:flutter/material.dart';
import 'package:flutter_1/models/photos.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_photos.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomePhotos extends StatelessWidget {
  final int id;

  const HomePhotos({super.key, required this.id});

  Future<Photos> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Photos(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Photos>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Photos> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Photos p = snapshot.data!;
            return MemberPhotos(photos: p);
          }
        },
      ),
    );
  }
}

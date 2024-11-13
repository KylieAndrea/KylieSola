import 'package:flutter/material.dart';
import 'package:flutter_1/models/albums.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_albums.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomeAlbums extends StatelessWidget {
  final int id;

  const HomeAlbums({super.key, required this.id});

  Future<Albums> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/albums/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Albums(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Albums>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Albums> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Albums p = snapshot.data!;
            return MemberAlbums(albums: p);
          }
        },
      ),
    );
  }
}

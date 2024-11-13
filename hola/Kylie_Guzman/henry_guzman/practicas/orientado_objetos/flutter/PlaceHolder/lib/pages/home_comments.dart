import 'package:flutter/material.dart';
import 'package:flutter_1/models/comments.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_comments.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomeComments extends StatelessWidget {
  final int cod;

  const HomeComments({super.key, required this.cod});

  Future<Comments> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/comments/$cod');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Comments(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Comments>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Comments> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Comments p = snapshot.data!;
            return MemberCommenst(comments: p);
          }
        },
      ),
    );
  }
}

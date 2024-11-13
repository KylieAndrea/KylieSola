import 'package:flutter/material.dart';
import 'package:flutter_1/models/posts.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_posts.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomePosts extends StatelessWidget {
  final int cod;

  const HomePosts({super.key, required this.cod});

  Future<Posts> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$cod');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Posts(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Posts>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Posts> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Posts p = snapshot.data!;
            return MemberPosts(posts: p);
          }
        },
      ),
    );
  }
}

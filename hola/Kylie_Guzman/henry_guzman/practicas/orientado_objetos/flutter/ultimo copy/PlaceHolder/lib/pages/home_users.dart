import 'package:flutter/material.dart';
import 'package:flutter_1/models/users.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_users.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomeUsers extends StatelessWidget {
  final int id;

  const HomeUsers({super.key, required this.id});

  Future<Users> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Users(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Users>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Users> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Users p = snapshot.data!;
            return MemberUsers(
              users: p,
            );
          }
        },
      ),
    );
  }
}

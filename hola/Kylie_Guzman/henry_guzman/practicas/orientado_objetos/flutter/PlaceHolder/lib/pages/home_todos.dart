import 'package:flutter/material.dart';
import 'package:flutter_1/models/todos.dart';
import 'package:flutter_1/widget/process.dart';
import 'package:flutter_1/widget/member_todos.dart';
import 'package:flutter_1/widget/error.dart';
import 'package:http/http.dart' as http;

class HomeTodos extends StatelessWidget {
  final int cod;

  const HomeTodos({super.key, required this.cod});

  Future<Todos> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/$cod');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Todos(response.body);
    } else {
      throw Exception('Error ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Todos>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Todos> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Process();
          } else if (snapshot.hasError) {
            return Error();
          } else {
            Todos p = snapshot.data!;
            return MemberTodos(todos: p);
          }
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_1/models/todos.dart';

class MemberTodos extends StatelessWidget {
  final Todos todos;

  MemberTodos({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.account_circle_outlined),
              SizedBox(width: 20),
              Text('Todos')
            ],
          ),
          backgroundColor: Colors.deepPurple[300],
          foregroundColor: Colors.white,
        ),
        body: Row(
          children: [
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text('UserId: ${todos.userId}'),
                Text('Id: ${todos.id}'),
                Text('Title: ${todos.title}'),
                Text('Completed: ${todos.completed}',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ));
  }
}

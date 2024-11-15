import 'dart:convert';

class Todos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todos(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['id'];
    this.title = map['title'];
    this.completed = map['completed'];
  }
}

import 'dart:convert';

class Posts {
  int? userId;
  int? id;
  String? title;
  String? body;

  Posts(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['id'];
    this.title = map['title'];
    this.body = map['body'];
  }
}

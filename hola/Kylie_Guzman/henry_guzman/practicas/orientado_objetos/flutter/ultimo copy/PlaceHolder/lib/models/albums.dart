import 'dart:convert';

class Albums {
  int? userId;
  int? id;
  String? title;

  Albums(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['Id'];
    this.title = map['title'];
  }
}
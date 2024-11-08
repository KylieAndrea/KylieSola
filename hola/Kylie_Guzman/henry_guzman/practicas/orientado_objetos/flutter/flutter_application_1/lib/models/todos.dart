import 'dart:convert';

class Photos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Photos(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['Id'];
    this.title = map['title'];
    this.completed = map['completed'];
  }
}

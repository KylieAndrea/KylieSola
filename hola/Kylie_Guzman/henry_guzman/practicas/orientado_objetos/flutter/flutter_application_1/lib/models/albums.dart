import 'dart:convert';

class Photos {
  int? userId;
  int? id;
  String? title;

  Photos(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['Id'];
    this.title = map['title'];
  }
}

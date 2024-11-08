import 'dart:convert';

class Comments {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Comments(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.postId = map['postId'];
    this.id = map['Id'];
    this.name = map['name'];
    this.email = map['email'];
    this.body = map['body'];
  }
}

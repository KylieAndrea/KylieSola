import 'dart:convert';

class Photos {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  Photos(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.postId = map['postId'];
    this.id = map['Id'];
    this.name = map['name'];
    this.email = map['email'];
    this.body = map['body'];
  }
}

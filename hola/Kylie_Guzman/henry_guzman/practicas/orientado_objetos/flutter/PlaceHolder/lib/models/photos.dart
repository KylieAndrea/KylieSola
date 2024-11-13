import 'dart:convert';

class Photos {
  String? albumId;
  String? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photos(String jsonString) {
    Map<String, dynamic> mimi = jsonDecode(jsonString);
    albumId = mimi["albumId"].toString();
    id = mimi['id'].toString();
    title = mimi['title'];
    url = mimi["url"];
    thumbnailUrl = mimi["thumbnailUrl"];
  }
}

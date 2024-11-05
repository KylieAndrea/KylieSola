import 'dart:convert';

class Photo {
  String? albumId;
  String? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photo(String jsonString) {
    Map<String, dynamic> mimi = jsonDecode(jsonString);
    albumId = mimi["albumId"].toString();
    id = mimi['id'].toString();
    title = mimi['title'];
    url = mimi["url"];
    thumbnailUrl = mimi["thumbnailUrl"];
  }
}

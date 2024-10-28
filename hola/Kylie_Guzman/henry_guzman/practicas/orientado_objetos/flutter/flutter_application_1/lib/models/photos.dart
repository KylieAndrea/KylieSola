import 'dart:convert';

class Photos {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photos(String jsonString){
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.albumId = map['AlbumId'];
    this.id = map['Id'];
    this.title = map['title'];
    this.url = map['Url'];
    this.thumbnailUrl = map['ThumbnailUrl'];
  }
}
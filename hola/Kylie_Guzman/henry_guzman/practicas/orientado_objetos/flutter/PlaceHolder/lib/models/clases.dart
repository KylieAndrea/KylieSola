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

class Posts {
  int? userId;
  int? id;
  String? title;
  String? body;

  Posts(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['Id'];
    this.title = map['title'];
    this.body = map['body'];
  }
}

class Todos {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todos(String jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString);
    this.userId = map['userId'];
    this.id = map['Id'];
    this.title = map['title'];
    this.completed = map['completed'];
  }
}

class Users {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? website;
  String? phone;
  Company? company;

  Users(String jsonString) {
    Map<String, dynamic> mimi = jsonDecode(jsonString);
    this.id = mimi['id'];
    this.name = mimi['name'];
    this.username = mimi['username'];
    this.email = mimi['email'];
    this.address = new Address(mimi['address']);
    this.website = mimi['website'];
    this.phone = mimi['phone'];
    this.company = new Company(mimi['company']);
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address) {
    this.street = address['street'];
    this.suite = address['suite'];
    this.city = address['city'];
    this.zipcode = address['zipcode'];
    this.geo = new Geo(address['geo']);
  }

  String toString() {
    return '["city": ${city}, "suite": ${suite}, "street": ${street}, "zipcode": ${zipcode}, ${geo}]';
  }
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    this.lat = geo['lat'];
    this.lng = geo['ing'];
  }

  String toString() {
    return '"geo": ["lat": ${lat}, "lng": ${lng}}]';
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company) {
    this.name = company['name'];
    this.catchPhrase = company['catchPhrase'];
    this.bs = company['bs'];
  }

  String toString() {
    return '["name": ${name}, "catchPhrase": ${catchPhrase}, "bs": ${bs}]';
  }
}

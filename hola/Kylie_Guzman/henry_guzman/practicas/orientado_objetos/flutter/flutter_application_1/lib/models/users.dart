import 'dart:convert';

class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? website;
  String? phone;
  Company? company;

  User(String jsonString) {
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
}

class Geo {
  String? lat;
  String? lng;

  Geo(Map geo) {
    this.lat = geo['lat'];
    this.lng = geo['ing'];
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
}

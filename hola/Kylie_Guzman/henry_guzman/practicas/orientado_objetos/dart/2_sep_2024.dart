import 'dart:convert';
//import 'dart:io';
import 'package:http/http.dart' as http;

class User{
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? website;
  String? phone;
  Company? company;

  User(String jsonString){
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

class Address{
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address){
    this.street = address['street'];
    this.suite = address['suite'];
    this.city = address['city'];
    this.zipcode = address['zipcode'];
    this.geo = new Geo(address['geo']);
  }

  String toString(){
    return '["city": ${city}, "suite": ${suite}, "street": ${street}, "zipcode": ${zipcode}, ${geo}]';
  }

}

class Geo{
  String? lat;
  String? lng;

  Geo(Map geo){
    this.lat = geo['lat'];
    this.lng = geo['ing'];
  }

  String toString(){
    return '"geo": ["lat": ${lat}, "lng": ${lng}}]';
  }

}

class Company{
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company){
    this.name = company['name'];
    this.catchPhrase = company['catchPhrase'];
    this.bs = company['bs'];
  }

  String toString(){
    return '["name": ${name}, "catchPhrase": ${catchPhrase}, "bs": ${bs}]';
  }

}

void main()async{

  var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
  var response = await http.get(url);
  User a = new User(response.body);
  print('id: ${a.id}');
  print('name: ${a.name}');
  print('username: ${a.username}');
  print('Email: ${a.email}');
  print('Address: ${a.address}');
  print('Phone: ${a.phone}');
  print('Website: ${a.website}');
  print('Company: ${a.company}');
}
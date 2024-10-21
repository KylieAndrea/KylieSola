import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

void main()async{

  print('ingrese el numero de usuario q desea ver');
  int b = int.parse(stdin.readLineSync()!);
  var url = Uri.https('jsonplaceholder.typicode.com', 'users/$b');
  var mirar = await http.get(url);
  User a = new User(mirar.body);
  print('ID: ${a.id}');
  print('NAME: ${a.name}');
  print('USER NAME: ${a.username}');
  print('EMAIL: ${a.email}');
  print('ADDRESS: ${a.address}');
  print('APHONE: ${a.phone}');
  print('WEBSITE: ${a.website}');
  print('COMPANY: ${a.company}');
}

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
    Map<String, dynamic> mymap = jsonDecode(jsonString);
    this.id = mymap['id'];
    this.name = mymap['name'];
    this.username = mymap['username'];
    this.email = mymap['email'];
    this.address = new Address(mymap['address']);
    this.website = mymap['website'];
    this.phone = mymap['phone'];
    this.company = Company(mymap['company']);
  }
}

class Address{
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address){
    this.street = address['name'];
    this.suite = address['suite'];
    this.city = address['city'];
    this.zipcode = address['zipcode'];
    this.geo = new Geo(address['geo']);
  }

  @override
  String toString(){
    return '["city": ${city}, "suite": ${suite}, "street": ${street}, "zipcode": ${zipcode}, ${geo} ]';
  }
}

class Geo{
  String? lat;
  String? lng;

  Geo(Map geo){
    this.lat = geo['lat'];
    this.lng = geo['ing'];
  }

  @override
  String toString(){
    return '"GEO": ["lat": ${lat}, "lng": ${lng}}]';
  }

}

class Company{
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company){
    this.name = company['name'];
    this.catchPhrase = company['catchphrase'];
    this.bs = company['bs'];
  }

  @override
  String toString(){
    return '["name": ${name}, "catchPhrase": ${catchPhrase}, "bs": ${bs}]';
  }
}
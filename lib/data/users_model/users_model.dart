import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class UsersModel {
  final int id;
  final String name;
  final String userName;
  final String email;
  final String pass;
  final String country;
  final String city;
  final String street;

  UsersModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.pass,
    required this.country,
    required this.city,
    required this.street,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'pass': pass,
      'country': country,
      'city': city,
      'street': street,
      'email': email,
    };
  }

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      id: json['id'] ?? 0, // Default to 0 if id is null
      name: json['name'] ?? '', // Default to empty string if name is null
      userName: json['userName'] ?? '', // Default to empty string if userName is null
      pass: json['pass'] ?? '', // Default to empty string if pass is null
      country: json['country'] ?? '', // Default to empty string if country is null
      city: json['city'] ?? '', // Default to empty string if city is null
      street: json['street'] ?? '', // Default to empty string if street is null
      email: json['email'] ?? '', // Default to empty string if email is null
    );
  }
}

List<UsersModel> usersList = [];

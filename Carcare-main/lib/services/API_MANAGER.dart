
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:gestion_notes/models/cours.dart';
//import 'package:gestion_notes/models/evaluation.dart';
//import 'package:gestion_notes/models/evenement.dart';
//import 'package:gestion_notes/models/ponderation.dart';
//import 'package:gestion_notes/models/typeEvaluation.dart';
//import 'package:gestion_notes/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class API_Manager {

  final String BASE_URL = "http://localhost:4000";

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    var  token= prefs.getString('token');
    if(token != null)
      return token;
    else
      return "";
  }

  static Future<void> deleteToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  static Future<void> writeToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token',token);
  }

  Future<String> login(String email, String password) async {
    final Uri baseUrl =
    Uri.parse(BASE_URL+"/login");

  final http.Response response = await http.post(
    baseUrl,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );
  var message = jsonDecode(response.body);
  print(message["message"]);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  var parse = jsonDecode(response.body);
  await prefs.setString('token', parse["token"]);
  return message["message"]; 

  }

}
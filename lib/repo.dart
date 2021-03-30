import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AppRepo with ChangeNotifier {
  var postList = [];
  getPost() {
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'), headers: {
      'Accept': 'Application/json',
      'Content-Type': 'Application/json'
    }).then((value) {
      print(jsonDecode(value.body));
      postList = jsonDecode(value.body);
      notifyListeners();
    });
  }
}

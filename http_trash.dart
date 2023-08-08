import 'dart:convert';

import 'package:http/http.dart';

import 'models/todo_model.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/1');

  Response responsePut = await put(
    uri,
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode({'todo': 'New todo'}),
  );

  print(responsePut.body);
}

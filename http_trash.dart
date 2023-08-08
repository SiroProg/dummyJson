import 'dart:convert';

import 'package:http/http.dart';

import 'models/todo_model.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/add');

  Todos newTodo = Todos(id: 156, todo: 'add todo', completed: true, userId: 5);

  Response responsePost = await post(
    uri,
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(newTodo.toMap()),
  );

  print(responsePost.body);
}

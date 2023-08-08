import 'dart:convert';

import 'package:http/http.dart';

import 'models/todo_model.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/user/5');

  Response responseGet = await get(uri);

  if (responseGet.statusCode == 200) {
    TodoModel todoModel = TodoModel.fromJson(jsonDecode(responseGet.body));
    print(todoModel.todos[3].id);
  } else {
    print('Error: ${responseGet.statusCode}');
  }
}

import 'package:http/http.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/random');

  Response responseGet = await get(uri);

  print(responseGet.body);
}

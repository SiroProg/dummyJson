import 'package:http/http.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl?limit=3&skip=10');

  Response responseGet = await get(uri);

  print(responseGet.body);
}

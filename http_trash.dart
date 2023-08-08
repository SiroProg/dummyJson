import 'package:http/http.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/user/5');

  Response responseGet = await get(uri);

  print(responseGet.body);
}

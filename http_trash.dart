import 'package:http/http.dart';

void main(List<String> args) async {
  String baseUrl = 'https://dummyjson.com/todos';
  Uri uri = Uri.parse('$baseUrl/1');

  Response responseDelete = await delete(uri);

  print(responseDelete.body);
}

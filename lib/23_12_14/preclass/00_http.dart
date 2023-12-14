import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  print(response.body);

  Map<String, dynamic> json = jsonDecode(response.body);

  print(json['title']);
  // final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
}
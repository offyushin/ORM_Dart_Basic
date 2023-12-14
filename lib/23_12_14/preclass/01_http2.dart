import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled/23_12_14/preclass/todo.dart';

void main() async {
  final Todo todo = await getTodo2(2);
  print(todo.title);
}


Future<Todo> getTodo2(int id) async {
  // 요청
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}


Future<Todo> getTodo(int id) async {
  // 요청
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  // jsonString
  final jsonString = response.body;
  // to Map 으로
  final json = jsonDecode(jsonString);

  // 모델클래스로 변환
  return Todo.fromJson(json);
}



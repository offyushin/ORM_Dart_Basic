import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:untitled/23_12_14/preclass/todo.dart';

void main() async {
 List<Todo> todos = await getTodos();

 todos.forEach((e) => print(e.title));
}

Future<List<Todo>> getTodos2() async {
  // 요청
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  final jsonList = jsonDecode(response.body) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();
}

// 여러개 리스트 받을때  패턴
Future<List<Todo>> getTodos() async {
  // 요청
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/'));
  // jsonString
  final jsonString = response.body;
  // to Map 으로
  final jsonList = jsonDecode(jsonString) as List<dynamic>;
  return jsonList.map((e) => Todo.fromJson(e)).toList();

  // 모델클래스로 변환
  // return Todo.fromJson(json);
}

// 하나 받을 때 패턴
Future<Todo> getTodo2(int id) async {
  // 요청
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
  return Todo.fromJson(jsonDecode(response.body));
}

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/23_12_18/post.dart';
import 'package:untitled/23_12_18/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  @override
  Future<List<Post>> getPosts() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    final jsonList = jsonDecode(response.body) as List<dynamic>;
    return jsonList.map((e) => Post.fromMap(e)).toList();
  }
}

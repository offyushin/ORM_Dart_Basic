import 'dart:convert';

import 'movie.dart';
import 'package:http/http.dart' as http;

Future<MovieList> getMovies() async {
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final jsonString = response.body;
  final jsonList = jsonDecode(jsonString);
  return MovieList.fromJson(jsonList);
}

void main() async {
  MovieList movies = await getMovies();
  movies.results.forEach((e) => print(e.toJson()));
  // movies.forEach((e) {
  //   print('${e.toJson()}');
  // });
}
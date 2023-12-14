import 'dart:convert';
import 'aquamanmovie.dart';
import 'package:http/http.dart' as http;

Future<AquamanMovie> getaquaMovies() async {
  final response = await http.get(Uri.parse('https://api.themoviedb.org/3/movie/572802?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final jsonString = response.body;
  final jsonList = jsonDecode(jsonString);
  return AquamanMovie.fromJson(jsonList);
}

void main() async {
  AquamanMovie aquamanMovie = await getaquaMovies();
  print(aquamanMovie.toJson());
}
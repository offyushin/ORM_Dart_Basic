import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };

  return jsonEncode(mockData);
}

class Movie {
  final String title;
  final String director;
  final int year;

  Movie(this.title, this.director, this.year);

  Movie.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        director = json['director'],
        year = json['year'];

  Map<String, dynamic> toJson() => {
    'title' : title,
    'director' : director,
    'year' : int
  };
}

void main() async {
  // print('dadsf');
  String movieinfo = await getMovieInfo();
  Map<String, dynamic> movieMap = jsonDecode(movieinfo);
  print(movieMap['director']);
  Movie movie = Movie.fromJson(movieMap);
  print(movie.director);
  print(movie.title);
  print(movie.year);

}

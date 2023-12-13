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

void main() async {
  // print('dadsf');
  String movieinfo = await getMovieInfo();
  Map<String, dynamic> movieMap = jsonDecode(movieinfo);
  // movieMap.forEach((key, value) {
  //   print('$key : $value');
  // });
  print(movieMap['director']);
}

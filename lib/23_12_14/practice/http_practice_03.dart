import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
final response = await http.get(Uri.parse('https://alimipro.com/favicon.ico'));
return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String filename) async {
  final file = File('lib/23_12_14/practice/$filename');
  return file.writeAsBytes(bytes);
}
void main() async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  print('다운로드 시작');
  Uint8List down = await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(down, 'imgfile.ico');
  stopwatch.stop();
  print('다운로드 끝');
  print('=============');
  print(stopwatch.elapsed);
}

// Stopwatch stopwatch = Stopwatch()..start();
// await Future.delayed(Duration(seconds: num));
// print('요청한 $num 작업 완료! : ${stopwatch.elapsed}');
// }
// argument, parameter
// parameter  : 함수에 정의 된 아이 = 형식 매개 변수
// argument : 파라미터에 들어갈 값 = 함수를 호출할 때 이 때 사용하게 되는 일련의 값들을 아규먼트라고 부른다.

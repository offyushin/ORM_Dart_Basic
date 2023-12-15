import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  // return http.readBytes(Uri.parse('https://alimipro.com/favicon.ico'));  이것도 가능함 ㄷㄷ;
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
  print('${down.length} 용량..?');
}


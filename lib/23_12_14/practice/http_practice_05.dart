import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  return http.readBytes(Uri.parse(url));
}

Future<File> saveFile(Uint8List bytes, String filename) async {
  final file = File('lib/23_12_14/practice/$filename');
  return file.writeAsBytes(bytes);
}
void main() async {
  Stopwatch stopwatch = Stopwatch()..start();
  print('순차 다운로드 시작');
  Uint8List down = await downloadImage('https://alimipro.com/favicon.ico');
  Uint8List down2 = await downloadImage('https://unsplash.com/photos/r4ZSR0cKJw8/download?ixid=M3wxMjA3fDF8MXxhbGx8MXx8fHx8fDJ8fDE3MDI1NDA4MjJ8&force=true');
  Uint8List down3 = await downloadImage('https://unsplash.com/photos/JZerhwPHiBI/download?ixid=M3wxMjA3fDF8MXxhbGx8MTF8fHx8fHwyfHwxNzAyNTQwODIyfA&force=true');
  Uint8List down4 = await downloadImage('https://unsplash.com/photos/xXqWVUvf_Gw/download?ixid=M3wxMjA3fDF8MXxhbGx8NzF8fHx8fHwyfHwxNzAyNTM3MjU5fA&force=true');
  saveFile(down, 'imgfile.ico');
  saveFile(down2, 'imgfile2.jpg');
  saveFile(down3, 'imgfile3.jpg');
  saveFile(down4, 'imgfile4.jpg');
  stopwatch.stop();
  print('순차 다운로드 끝');
  print('====================================');
  print('소요시간 : ${stopwatch.elapsed}');
  print('용량 : ${down.length} bytes');
  print('용량 : ${down2.length} bytes');
  print('용량 : ${down3.length} bytes');
  print('용량 : ${down4.length} bytes');
  print('====================================');

  Stopwatch stopwatch2 = Stopwatch()..start();
  print('병렬 다운로드 시작');
  List<Future<Uint8List>> downjobList = [
 downloadImage('https://alimipro.com/favicon.ico'),
 downloadImage('https://unsplash.com/photos/r4ZSR0cKJw8/download?ixid=M3wxMjA3fDF8MXxhbGx8MXx8fHx8fDJ8fDE3MDI1NDA4MjJ8&force=true'),
 downloadImage('https://unsplash.com/photos/JZerhwPHiBI/download?ixid=M3wxMjA3fDF8MXxhbGx8MTF8fHx8fHwyfHwxNzAyNTQwODIyfA&force=true'),
 downloadImage('https://unsplash.com/photos/xXqWVUvf_Gw/download?ixid=M3wxMjA3fDF8MXxhbGx8NzF8fHx8fHwyfHwxNzAyNTM3MjU5fA&force=true'),
  ];
  List<Uint8List> results = await Future.wait(downjobList);

  saveFile(results[0], 'imgfile5.ico');
  saveFile(results[1], 'imgfile6.jpg');
  saveFile(results[2], 'imgfile7.jpg');
  saveFile(results[3], 'imgfile8.jpg');
  stopwatch2.stop();
  print('순차 다운로드 끝');
  print('====================================');
  print('소요시간 : ${stopwatch2.elapsed}');
  print('용량 : ${results[0].length} bytes');
  print('용량 : ${results[1].length} bytes');
  print('용량 : ${results[2].length} bytes');
  print('용량 : ${results[3].length} bytes');
}

// 'https://unsplash.com/photos/r4ZSR0cKJw8/download?ixid=M3wxMjA3fDF8MXxhbGx8MXx8fHx8fDJ8fDE3MDI1NDA4MjJ8&force=true',
// 'https://unsplash.com/photos/JZerhwPHiBI/download?ixid=M3wxMjA3fDF8MXxhbGx8MTF8fHx8fHwyfHwxNzAyNTQwODIyfA&force=true',
// 'https://unsplash.com/photos/xXqWVUvf_Gw/download?ixid=M3wxMjA3fDF8MXxhbGx8NzF8fHx8fHwyfHwxNzAyNTM3MjU5fA&force=true'
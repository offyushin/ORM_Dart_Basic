import 'dart:io';

void main() {
  // open
  final file = File('save.txt');
  // 읽고나 쓰고 닫는다
  // file.writeAsStringSync('Hello World');

  // if (file.existsSync()) {
  //   final text = file.readAsStringSync();
  //   print(text);
  // } else {
  //   print('파일이 없습니다');
  // }

// try = catch
  try {
    final text = file.readAsStringSync();
    print(text);
  } catch (e) {
    print('파일이 없습니다 : ${e.toString()}');
  }
}
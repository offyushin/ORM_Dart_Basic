import 'dart:io';

void main() {
  final file = File('lib/23_12_11/file/text');
  print(file.readAsStringSync());

  String writeText = '안녕하세요 ~~~~~~~';
  file.writeAsStringSync(writeText);

  copy(String source, String target) {
    final file = File('lib/23_12_11/file/$source');
    final copyFile = File('lib/23_12_11/file/$target');
    copyFile.writeAsStringSync(file.readAsStringSync());
  }

  copy('text', 'target');

}

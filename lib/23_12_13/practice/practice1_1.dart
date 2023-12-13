import 'dart:io';

void main() {
  copy('lib/23_12_13/practice/sample.csv',
      'lib/23_12_13/practice/sample_copy.csv');
}

void copy(String source, String target) async {
  try {
    final file = File(source);
    final copy = File(target);

    String readFile = await file.readAsString();
    if (readFile.contains('한석봉')) {
      String writeFile = readFile.replaceAll('한석봉', '김석봉');
    await copy.writeAsString(writeFile);
    print('파일 복사 완료~');
    }
  } catch (e) {
    print('파일을 찾을 수 없습니다');
  }
}

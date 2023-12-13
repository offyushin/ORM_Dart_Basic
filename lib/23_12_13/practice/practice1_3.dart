Future<String> timeoutFutre() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  String out = await timeoutFutre().timeout(Duration(seconds: 5), onTimeout: () => '시간초과 ㅋㅋ');
  print(out);
}

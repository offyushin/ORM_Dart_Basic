Future<String> timeoutFutre() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

void main() async {
  String out = await timeoutFutre().timeout(Duration(seconds: 5), onTimeout: () => 'timeout');
  print(out);
}

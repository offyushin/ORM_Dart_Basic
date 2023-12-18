String reverseString(String string) {
  final reversStr = string.split('').reversed.join();
  return reversStr;
}

void main() {
  reverseString('hello');
}
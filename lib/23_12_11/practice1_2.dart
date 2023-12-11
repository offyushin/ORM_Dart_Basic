void main() {
  int num;
  // final numString = '10.5';
  // int num = int.parse(numString);

  try {
    final numString = '10.5';
    num = int.parse(numString);
    print(num);
  } catch (e) {
    num = 0;
    print('${num}');
  }
  print('${num}');
}

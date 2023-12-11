
void main() {
  try {
    final numString = '10.5';

    int num = int.parse(numString);

    print(num);
  } catch(e) {
    int e = 0;
    print('에러가 발생하여 ${e} 으로 처리했습니다');
  }
}

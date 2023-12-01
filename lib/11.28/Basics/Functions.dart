void main() {
  // 타입 지정된 함수
  int add(int a, int b) {
    return a + b;
  }

  // 화살표 함수
  // 한 줄 정도의 짧은 함수에는 retrun을 =>로 사용해도 된다~
  int multiply(int a, int b) => a * b;

  // forEach()를 사용한 함수 인수와 익명 함수
  var numbers = [1, 2, 3, 4, 5];
  numbers.where((number) => number.isEven).forEach(print);
}
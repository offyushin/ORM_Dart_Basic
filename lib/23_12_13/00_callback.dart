// 콜백 함수를 사용하는 · 함수
void performOperation(int a, int b, int Function(int a, int b) callback) {
  print("Operation started with $a and $b");
  int result = callback(a, b);
  print("Result: $result");
}

// 덧셈 함수
int add(int a, int b) {
  return a + b;
}

// 뺄셈
int subtract(int a, int b) {
  return a - b;
}

//콜백 예제
void myFunc(void Function() onTap) {
  //5초 동안 요리

  //알리고
  onTap();

  // 3초있다가 다시 알려
  onTap();
  onTap();
}

void main() {
// 덧셈 함수를  고계함수...
  performOperation(5, 3, (a, b) => a * b);

//  뺄셈 함수를 고계함수...
  performOperation(8, 2, subtract);

// 콜백
  myFunc(() {
    print('벨 울림!!');
  });
}

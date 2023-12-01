// 이 Dart 코드는 제어문 예시를 포함하고 있습니다.


void main() {
  // if-else 문: 조건에 따라 코드 실행 여부 결정
  int number = 42;
  // 42 > 50  -> true? false 인지 구분해 라고 컴퓨터한테 명령
  if (number > 50) {
    print('50보다 크면 출력해!');
    //거짓값은 else
  } else {
    print('50보다 크거나 작으면 출력해!');
  }

  // switch-case 문: 다중 분기 처리
  String fruit = 'apple';
  // fruit == apple
  switch (fruit) {
    case 'apple':
      print('apple이 맞아요');
      break; // break 가 없으면 다음으로 넘어감..
    case 'banana':
      print('banana가 맞아요');
      break; // banana가 맞으면 여기서 끝남
    default: // apple도 아니고 banana도 아니면 default 값을 출력해
      print('이건 과일이 아니야');
  }
  print('-----------------');
  // for-in 문: 리스트나 맵의 모든 항목에 대해 반복
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print(number);
  }
  print('-----------------');
  // while 문: 조건이 참인 동안 코드 반복 실행
  // ++ (1씩더해) 를 사용하여 0 < 5 까지 코드를 반복 실행 0,1,2,3,4
  int count = 0;
  while (count < 5) {
    print(count);
    count++;
  }
  print('-----------------');
  // do-while 문: 코드를 최소한 한번 실행하고, 조건이 참인 동안 반복 실행
  // 먼저 i를 더해 i가 3보다 작을때 판별해 0,1,2
  int i = 0;
  do {
    print(i);
    i++;
  } while (i < 3);
}
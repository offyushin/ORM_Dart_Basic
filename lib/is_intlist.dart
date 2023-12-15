void main() {
  List<int> numbers = [1, 2, 5, 3, 9, 8];

  numbers.sort(); // 리스트를 정렬합니다.

  int last = numbers.last; // 마지막 요소
  int secondLast = numbers[numbers.length - 2]; // 마지막에서 두 번째 요소.

  int sum = last + secondLast; // 요소 더하기

  print(sum); // 결과를
}
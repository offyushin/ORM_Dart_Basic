import 'package:test/test.dart';
import 'package:untitled/23_12_18/practice_2.dart';
import 'package:untitled/23_12_18/practice_3.dart';
import 'package:untitled/23_12_18/practice_4.dart';

void main() {
  test('짝수면 true', () {
    expect(isEven(4), true );
  });

  test('홀수면 false', () {
    expect(isEven(5), false );
  });

  test('가장 큰 값', () {
    expect(findMax([2,5,1,8,10]), 5 );
  });

  test('문자열 뒤집기', () {
    expect(reverseString('hello'), 'hello');
  });
}
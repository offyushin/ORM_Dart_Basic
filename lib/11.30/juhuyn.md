// 이 Dart 코드는 main 함수를 포함하고 있습니다.
// 이 코드는 실행 가능한 Dart 프로그램입니다.

void main() {
// main 함수 내부에 프로그램 실행 로직을 작성합니다.

// 자료형 복습
// String hello = 'hello, Flutter!';
// int intNumber = 10;
// double doubleNumer = 20.0;

// doulbeNumber = 3;
// intNumber = 3.14;

// var varType = 3;            // 타입 추론
// varType = 3.14;

// dynamic varType1;
// varType1 = 3; // int
// print(varType1);
// varType1 = 3.14; // double
// print(varType1);
// varType1 = 'hello'; // String
// print(varType1);
// runtime 프로그램 시작해서 문제가 생기면 예외(exception) 앱이 죽음
// 앱이 죽으면 runtime의 문제구나!
// statice 정적 (반대되는거) (error)

// var str; // 이렇게 하면 일단 dynamic
// String str = 'Dart';
// print('나는 $str'); // String interpolation.

//final id;
// id= 'offyushin@naver.com'
//id = 'offyushin@naver.com';
// const pi = 3.14;
// class-wide // 객체에 종속이 아니고 클래스에 종속된다.
// 클래스명().pi;
// 클래스명.pi;   
//String id = 'offyushin@naver.com';


bool isMember = false;

if (isMember) {
// Welcome
} else {
// Sign up
}
}


class Person { // 클래스 명은 전통적으로 대문자 ㅋ..
late String name; // 프라퍼티는 이름이다


void sayHello() { // 함수 이렇게 동작해줘
print('Hello, my name is $name');
}
}

// 모델, 모델클래스, 클래스 = 클래스다

void main() {
Person person = Person(); // 타입 추론 infer var 써도 됨
person.name = 'Alice';
person.sayHello();

Person person2 = Person(); // 타입 추론 infer var 써도 됨
person2.name = 'yushin';
person2.sayHello();
}

void main() {
// 정수형 변수
int number =  42;

// 실수형 변수
double pi = 3.14;

// 불리언 변수
bool isDartFun = true;

// 문자열 변수
String greeting = 'Hello, Dart!';

// 리스트 변수
List<int> numbers = [1, 2, 3, 4, 5];

// 맵 변수
// key - value
Map<String, int> ages = {
'dasf' : 1,
'fff' : 3,
'Charlie' : 35,
};

// 변수 출력
print(number);
print(pi);
print(isDartFun);
print(greeting);
print(numbers);
print(ages);

// 변수 값 변경
number = 100;
pi 3.141592;
isDartFun = false;
greeting = 'Goodbye, Dart!';
numbers.add(6);

}
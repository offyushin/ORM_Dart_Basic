class Person {
  late String name;

  void sayHello() {
    print('Hello, my name is $name');
  }
}

void main() {
  var person = Person();
  person.name = 'Alice';
  person.sayHello();
}
// 변수가 초기화가 안됐지만 언젠가 말해줄거야
// 변수할때 쓰는거
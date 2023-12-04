class Person {
  String name;
  int age;

  Person({
    required this.name,
    required this.age});

  String str() {
    return '$name의 나이는 $age살';
  }
}

void main() {
  List<Person> persons = [
    Person(name: '홍길동', age: 20),
    Person(name: '한석봉', age: 25),
  ];

  for (Person person in persons) {
    print(person.str());
  }


}
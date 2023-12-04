class Person {
  String name;

  Person({required this.name});
}

void main() {
  List<Person> persons = [
    Person(name: '홍길동'),
    Person(name: '한석봉'),
  ];

  for (Person person in persons) {
    print(person.name);
  }


}
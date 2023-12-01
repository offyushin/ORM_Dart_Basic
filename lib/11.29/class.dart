//다음의 함수가 실행될 수 있도록 Class Person을 작성하시오
class Person{ //클래스

  var name; // 이름이라는 데이터 가지고있음
  var age; // 나이라는 데이터 가지고있음

  Person(this.name, this.age); // 처음에 Person객체를 만들때 name과 age를 입력해줘야한다
                                // 입력한 name var name의 데이터로 쓰겠다 age도 동일
  void printInfo(){            //내가 가지고 있는 멤버에서 name과 age를 불러오면 출력하겠다
    print('name: $name , age: $age ');
  }
}



void main() {
  var person = Person('John Doe', 30);
  person.printInfo();

  var person2 = Person('Yushin',24);
  person2.printInfo();

  var saram = Person('Dasom', 29);
  saram.printInfo();
}
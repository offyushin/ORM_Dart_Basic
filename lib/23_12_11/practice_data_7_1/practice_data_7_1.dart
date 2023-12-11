import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader,
    };
  }
}

void main() {
  final employee = Employee('홍길동', 41);
  final depart = Department('총무부', employee);

  final employee2 = Employee('동길홍', 14);
  final depart2 = Department('총무부', employee2);
  
  File file = File('lib/23_12_11/practice_data_7_1/company.txt');
  file.writeAsStringSync(jsonEncode(depart.toJson()));
  file.writeAsStringSync(jsonEncode(depart2.toJson()), mode: FileMode.append);

}

// Dart 환경에서는 클래스 내용을 Json 형태로 변환하는 것으로 본다
// 역직렬화는 그 반대로 Json 형태를 클래스 내용으로 변환하는 것
// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를// print('${department.name}의 리더는 ${department.leader.name} 이고 나이는 ${department.leader.age} 입니다');
//

// 직렬화
// Map<String, dynamic> toJson() {
//   return {
//     'name': name,
//     'email': email,
//     'age': age,
//   };
// } 위해 위의 2개 클래스를 일부 수정해도 됩니다.

import 'dart:convert';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }


}

// Dart 환경에서는 클래스 내용을 Json 형태로 변환하는 것으로 본다
// 역직렬화는 그 반대로 Json 형태를 클래스 내용으로 변환하는 것
// 총무부 리더 ‘홍길동(41세)’의 인스턴스를 생성하고 직렬화하여 company.txt 파일에 쓰는 프로그램을 작성하시오.
// 직렬화를 위해 위의 2개 클래스를 일부 수정해도 됩니다.

class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);

  Department.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        leader = json['leader'];

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'leader': leader,
    };
  }
}

void main() {
  final json = {"name": "홍길동", "age": 41, "Department": "총부무"};
  print(json.runtimeType);

  final employee = Employee('홍길동', 41);
  final depart = Department('총무부', employee);

  // print('${department.name}의 리더는 ${department.leader.name} 이고 나이는 ${department.leader.age} 입니다');
}
// 직렬화
// Map<String, dynamic> toJson() {
//   return {
//     'name': name,
//     'email': email,
//     'age': age,
//   };
// }

import 'dart:html';

void main (){
  final json = {
"name": "John Smith",
"email": "john@example.com",
    "age" : 10,
};
  print(json.runtimeType);
  final user = User(name: 'aaa', email: 'aaa', age: 23);
  print(user);

  User user2 = User.fromJson({
    'name' : '슈퍼맨',
    'email' : 'aaaa',
    'age' : 10,
  });

  print(user2.toString());

}

class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'email': this.email,
      'age': this.age,
    };
  }
// 역직렬화
  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
      age: map['age'] as int,
    );
  }

  @override
  String toString() {
    return 'User{name: $name, email: $email, age: $age}';
  }

// 직렬화
  // Map<String, dynamic> toJson() {
  //   return {
  //     'name' : name,
  //     'email' : email,
  //   }
  // }
}
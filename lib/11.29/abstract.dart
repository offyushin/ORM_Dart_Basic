//추상클래스를 사용하여 IronMan Class에 method를 구현하기

abstract class IronMan {
  var name;
  var suitColor;

  IronMan(this.name, this.suitColor);
// 이거 작성 안해서 20분동안 뭐가 잘못된지 몰랐음 ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ;;

  // This is an abstract method. It must be implemented by subclasses.
  void fly();

  // This is an abstract method. It must be implemented by subclasses.
  void shootLasers();

  // This is an abstract method. It must be implemented by subclasses.
  void withstandDamage();
}
// abstract calss 니까 너가 값을 입력하지 않아도 나중에 설명해주겠지? 넘어갈게 ㅋ

//@override 구문을 사용하여 abstract method 구현
class Mark50 extends IronMan {

  Mark50(String name, String suitColor) : super(name, suitColor);

  @override
  void fly() {
    print('$name is flying');
  }

  @override
  void shootLasers() {
    print('$name is shoot Laser!');
  }

  @override
  void withstandDamage() {
    print('$name is make huge Damage!');
  }
}

void main() {
  var mark50 = Mark50('Mark50', 'red');

  mark50.shootLasers();
  mark50.fly();
  mark50.withstandDamage();
}
class IronMan {
  String name;
  int powerLevel;

  IronMan(this.name, this.powerLevel);
  // this 사용 목적 아이언맨의 매개변수 name이다

  void shoot() {
    print('$name is shooting guns!');
  }
}

class IronManMK3 extends IronMan {
//MK3는 리펄서를 쏘고 하늘을 날수 있게 해보세요
//shoot() 메서드를 오버라이드 합니다.
//비행고도 값을 추가한뒤
//fly() 메서드를 추가하세요
  var flyhi;

  IronManMK3(String name, int powerlevel, this.flyhi): super(name, powerlevel);


  @override
  void shoot() { // override 해줬다..
    print('$name is shooting Laser!');
  }

  void fly() {
    print('$name is flying in $flyhi');
  }
}

void main() {
  IronMan mk1 = IronMan("mk1", 10);

  IronManMK3 mk3 = IronManMK3("mk3", 20, 1000);

  mk1.shoot();

  mk3.shoot();

  mk3.fly();
}
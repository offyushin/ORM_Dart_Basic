
import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;
  String name;
  int hp;
  int mp;
  // Cleric(this.name, this.hp, this.mp);
  Cleric(this.name, {this.mp = maxMp, this.hp = maxHp});
  //int hp = 50;
 // int mp = 10;

 // Cleric(this.name,);


  // 성직자는 “셀프 에이드" 라는 마법을 사용할 수 있고, MP를 5소비하는 것으로 자신의 HP 를 최대 HP 까지 회복할 수 있다.
  void selfAid() {
    // 끝나는 조건
    final beforehp = hp;
    // final selfAidHp = maxHp

    if (mp < 5) {
      print('마나부족');
     // return;
    }
      print("$name은 $beforehp HP 에서 $maxHp HP 가 됐다!");
    mp = mp - 5; // mp -= 5
    hp = maxHp;
  }

  // 성직자는 “기도하기" (pray) 라는 행동을 취할 수 있고, 자신의 MP를 회복한다.
  // 이 메소드는 인수에 “기도할 시간(초)"를 지정할 수 있고, 리턴 값은 “실제로 회복된 MP 양" 을 반환한다.

  int pray(int sec) {
    // 나중에 계산하려고 미리 값을 저장해 둔다
    final beforeMp = mp;

    // 회복량은 기도한 시간(초)에 랜덤하게 0 ~ 2포인트의 보정을 한 양이다 (3초 기도하면 회복량은 3 ~ 5 포인트).
    final recoveryMp = sec + Random().nextInt(3);

    mp += recoveryMp;

    // 단, 최대 MP 보다 더 회복하는 것은 불가능 하다.
    if  (mp > maxMp) {
      mp = maxMp;

    }
    print('$name 은 $beforeMp에서 $recoveryMp 회복했다\n현재 MP:$mp');
    //리턴 값은 “실제로 회복된 MP 양" 을 반환한다.
    return beforeMp - mp;

  }

 // Cleric(this.name, this.hp, this.mp);
}

void main(){
  final arthur1 = Cleric('아서스1', hp: 40, mp: 10);
  final arthur2 = Cleric('아서스2', hp: 35);
  final arthur3 = Cleric('아서스3');
  // final arthur4 = Cleric();
  arthur1.pray(3);

  arthur2.selfAid();
  arthur1.selfAid();
  arthur3.selfAid();
  /* arthur1.selfAid();
  arthur1.pray(1);

  arthur1.selfAid();
  arthur1.pray(5);

  arthur2.selfAid();
  arthur2.pray(1); */
}

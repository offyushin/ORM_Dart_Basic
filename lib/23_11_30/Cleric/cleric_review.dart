import 'dart:math';

void main() {
  Cleric cleric = Cleric("yj");
  print("${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");

  cleric.mp = 9;

  int sec = 3;
  int recoveryMp = cleric.pray(sec);
  print("$sec초 기도 후 ${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");

  print("실제 회복 mp: $recoveryMp");

  cleric.selfAid();
  print("selfAid 이후 ${cleric.name}의 HP: ${cleric.hp}, MP: ${cleric.mp}");
}

class Cleric {
  String name;
  int hp = 50;
  final int maxHP = 50;
  int mp = 10;
  final int maxMP = 10;

  Cleric(this.name);

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    }
  }

  int pray(int sec) {
    Random random = Random();
    mp += sec + random.nextInt(3);

    // 조건 => true or false
    // 3항연산
    bool isOverMp = mp > maxMP;
    mp = isOverMp ? ((maxMP % 2 == 0) ? maxMP : maxMP - 2) : mp;

    if (mp > maxMP) {
      mp = maxMP;
    }

  /*  int a = 10;
    int b = 20;
    mp += (sec > 0) ? a : b; */

    return mp;
  }
}
// f(x) = 2 * x
int x = 10;
int y = f(x);      // input

int f(int x) {          // output
  return 2 * x;          // block body { 중가로 }
}

void aa() {} // input output 둘다 없는거

void bbb(int a) {} // input 있고 output 없는거

int ccc() => 1; // output 있는거
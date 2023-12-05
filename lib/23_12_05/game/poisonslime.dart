

import 'slime.dart';

import 'hero.dart';

class PoisonSlime extends Slime {
  int _poisonAttack = 5;

  PoisonSlime(super.suffix, this._poisonAttack);

  int get poisonAttack => _poisonAttack;

  set poisonAttack(int value) {
    _poisonAttack = 5;
  }

  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (_poisonAttack > 0) {
      print('추가로, 독 포자를 살포했다!');
      int damage = (hero.hp ~/ 5);
      hero.hp -= damage;
      print('$damage 포인트의 데미지');
      _poisonAttack--;
      // % , /  -> 이거 안되는 이유는 정수로 반환해야해서 였다..
      // hero.hp = (hero.hp  % 5);
      // hero.hp = (hero.hp  / 5);
      // print('$poisonAttack 포인트의 데미지');
    }
  }
}

void main() {
  Hero hero1 = Hero(name: '실험체', hp: 50);
  print('${hero1.name}의 현재 체력은 ${hero1.hp}');
// {} 괄호를 사용해서 ${hero1.name} 가능하다는거..
  Slime poisonSlime1 = PoisonSlime('포이즌슬라임', 1);
  // Slime poisonSlime1 = Slime('포이즌슬라임'); 이따구로 작성해서 30분동안 뭐가 문제야? 하고 있던 내가 레전드 레전드 레전드 레전드
  poisonSlime1.attack(hero1);
  print('${hero1.name}의 현재 체력은 ${hero1.hp}');

  // poisonSlime1.attack(hero1);
  // print('${hero1.name}의 현재 체력은 ${hero1.hp}');
}

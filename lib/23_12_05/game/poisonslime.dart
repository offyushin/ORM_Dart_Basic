import 'slime.dart';

import 'hero.dart';

class PoisonSlime extends Slime {
  PoisonSlime(super.suffix, this._attackNumbers);

  // bool _isFlying = false;
  //
  // bool get isFlying => _isFlying;
  //
  // set isFlying(bool value) {
  //   _isFlying = value;
  //
  //   if (value) {
  //     print('$name 이 날개를 펼쳤다');
  //   } else {
  //     print('$name 이 날개를 접었다');
  //   }

  bool _attackNumbers = false;

  bool get attackNumbers => _attackNumbers;

  set attackNumbers(bool value) {
    _attackNumbers = value;
    if (attackNumbers) {
      print('$suffix 이 날개를 펼쳤다');
    } else {
      print('$suffix 이 날개를 접었다');
    }
  }

  @override
  void attack(Hero hero) {
    super.attack(hero);
  }
}

void main() {
   PoisonSlime poisonSlime = PoisonSlime('포이즌슬라임', false);
   Hero hero1 = Hero(name: '홍길동길동', hp: 100);
   poisonSlime.attack(hero1);
}

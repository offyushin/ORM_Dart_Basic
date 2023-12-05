import 'slime.dart';

import 'hero.dart';

class PoisonSlime extends Slime {
  int poisonAttack = 5;
  PoisonSlime(super.suffix);


  @override
  void attack(Hero hero) {
    super.attack(hero);
    if (poisonAttack > 0) {
    print('추가로, 독 포자를 살포했다!');

    }


  }

}


void main() {
  Hero hero1 = Hero(name: '실험체', hp: 100);
  hero1.run();
  print(hero1.hp);

  Slime poisonSlime1 = PoisonSlime('포이즌슬라임');
  // Slime poisonSlime1 = Slime('포이즌슬라임'); 이따구로 작성해서 30분동안 뭐가 문제야? 하고 있던 내가 레전드 레전드 레전드 레전드
  poisonSlime1.attack(hero1);

  print(hero1.hp);


}
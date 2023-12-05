import 'wand.dart';

class Wizard {
  String _name;
  int _hp;
  int _mp;
  Wand _wand;

  Wizard({
    required String name,
    required hp,
    required mp,
    required Wand wand,
  })  : _name = name,
        _hp = hp,
        _mp = mp,
        _wand = wand {
    if (_name.length < 3) {
      throw Exception('마법사의 이름을 3글자 이상 작성해주세요');
    }
    if (mp <= 0) {
      throw Exception('Exception 마법사의 MP는 0 이상이어야 합니다.');
    }
  }

  void damage(int damage) {
    _hp -= damage;
    if (_hp < 0) {
      _hp = 0;
    }
    print('$_name 는 $damage 만큼 피해를 잆었다 \n남은체력 $_hp');
  }
}

void main() {
  Wand wand = Wand(name: '응원봉', power: 50.0);
  Wizard wizard = Wizard(name: '카리나', hp: 50, mp: 2, wand: wand);

  wizard.damage(1000);

}

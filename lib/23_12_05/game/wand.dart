class Wand {
  String _name; // 이름
  double _power; // 마력

  Wand({
    required name,
    required power,
  })  : _name = name,
        _power = power {
    if (_name.length < 3) {
      throw Exception('wand의 이름을 3글자 이상 작성해주세요');
    }
    if (power < 0.5 || power > 100.0) {
      throw Exception('Exception 마력은 0.5~100.0 사이여야 합니다.');
    }
  }
}

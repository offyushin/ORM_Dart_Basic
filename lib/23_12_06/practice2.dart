class A extends Y implements X {
  @override
  void a() {
    print('Aa');
    // TODO: implement a
  }

  @override
  void b() {
    print('Ab');
    // TODO: implement b
  }

  void c() {
    print('Ac');
  }
}

class B extends Y implements X {
  @override
  void a() {
    print('Ba');
    // TODO: implement a
  }

  @override
  void b() {
    print('Bb');
    // TODO: implement b
  }

  void c() {
    print('Bc');
  }
}

abstract interface class Y implements X {
  void b();
}

abstract interface class X {
  void a();
}

void main(List<String> cup) {
  final y = <Y>[];
  y.add(A());
  y.add(B());

  y.forEach((y) {
    y.b();
  });
}

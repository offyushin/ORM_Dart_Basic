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

abstract interface class X {
  void a();
}

abstract interface class Y implements X {
  void b();
}

void main () {
  X obj = A();
  obj.a();

  Y y1 = A();
  Y y2 = B();

  y1.a();
  y2.a();


}


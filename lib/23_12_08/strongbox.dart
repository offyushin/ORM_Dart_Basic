class Strongbox<E> {
  E? _data;
  int _count;
  KeyType _keyType;
  int usercount = 0;

  Strongbox({
    required KeyType keyType,
  })  : _keyType = keyType,
        _count = keyCount[keyType] ?? 0;

  void put(E data) {
    _data = data;
  }

  E? get() {
    usercount++;
    if (usercount > _count) {
      return _data;
    } else {
      return null;
    }
  }
}

enum KeyType {
  padlock,
  button,
  dial,
  finger,
}

Map<KeyType, int> keyCount = {
  KeyType.padlock: 1024,
  KeyType.button: 10000,
  KeyType.dial: 30000,
  KeyType.finger: 1000000,
};

void main() {
  Strongbox<String> box = Strongbox(keyType: KeyType.padlock);
  box.put('padlock');
  for (int i = 0; i < 1025; i++) {
    String? boxbox = box.get();
    if (boxbox != null) {
      print('$boxbox');
    }
  }

  Strongbox<String> box2 = Strongbox(keyType: KeyType.button);
  box2.put('button');
  for (int i = 0; i < 10001; i++) {
    String? boxbox1 = box2.get();
    if (boxbox1 != null) {
      print('$boxbox1');
    }
  }
}

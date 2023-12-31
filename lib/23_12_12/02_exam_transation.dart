import 'dart:math';

import 'package:collection/collection.dart';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);

  @override
  String toString() {
    return '이름: $name, 도시: $city';
  }
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);

  @override
  String toString() {
    return '트랜잭션 트레이더: $trader 년도: $year 값: $value\n';
  }
}


var transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1. 2011년에 일어난 모든 트랜잭션을 찾아 가격 기준 오름차순으로 정리하여 이름을 나열하시오
  print(transactions
      .where((e) => e.year == 2011)
      .sorted((a, b) => a.value.compareTo(b.value))
      .map((e) => e.trader.name)
      .toSet()
      .toList()
      );
  print('2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오');
  // 2. 거래자가 근무하는 모든 도시를 중복 없이 나열하시오
  print(transactions.map((e) => e.trader.city).toSet().toList());

  print('3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오');
  // 3. 케임브리지에서 근무하는 모든 거래자를 찾아서 이름순으로 정렬하여 나열하시오
  print(transactions
      .where((e) => e.trader.city == "Cambridge")
      .map((e) => e.trader.name)
      .toSet()
      .toList());

  print('4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오');
  // 4. 모든 거래자의 이름을 알파벳순으로 정렬하여 나열하시오
  print(transactions
      .map((e) => e.trader.name)
      .toList()
      .toSet()
      .sorted((a, b) => compareNatural(a, b)));

  print('5. 밀라노에 거래자가 있는가?');
// 5. 밀라노에 거래자가 있는가? true중에서 중복을 제거하고 mario만 출력하는게 맞나?
  print(transactions
      .where((e) => e.trader.city == "Milan")
      .map((e) => e.trader.name)
      .toSet()
      .toList()
      
  );
  print('5. 밀라노에 거래자가 있는가?');
// 5. 밀라노에 거래자가 있는가? 아니면 any를 사용하여 밀라노에 거래자가 있는지만 출력하는 것인가?
  print(transactions
  .any((e) => e.trader.city == "Milan"));



  print('6. 케임브리지에 거주하는 거래자의 모든 트랜잭션값을 출력하시오');
// 6. 케임브리지에 거주하는 거래자의 모든 트랜잭션값을 출력하시오
  print(transactions
      .where((e) => e.trader.city == "Cambridge")
      .toList()
  );
  print('7. 전체 트랜잭션 중 최대값은 얼마인가?');
// 7. 전체 트랜잭션 중 최대값은 얼마인가?
  print(transactions
      .map((e) => e.value)
      .reduce((v, e) => max(v, e))
  );

  print('8. 전체 트랜잭션 중 최소값은 얼마인가?');
// 8. 전체 트랜잭션 중 최소값은 얼마인가?
  print(transactions
      .map((e) => e.value)
      .reduce((v, e) => min(v, e))
  );
}

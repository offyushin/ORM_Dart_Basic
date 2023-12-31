// 가
abstract class Asset {

}

abstract interface class Thing {
  double get weight;
  set weight(double value);
}
// 나
abstract class IntangibleAsset extends Asset {

}
// 다
abstract class Patent extends IntangibleAsset {

}
abstract class TangibleAsset extends Asset implements Thing {
  String name;
  int price;
  String color;

  @override
  late double weight;

  TangibleAsset({
    required this.name,
    required this.price,
    required this.color,
  });
}


class Book extends TangibleAsset {
  String isbn;

  @override
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  Book({
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
    required double weight,
  }) : _weight = weight;
}

class Computer extends TangibleAsset {
  String makerName;

  @override
  double _weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
    required double weight,
  }) : _weight = weight;
}

void main() {
  Book book = Book(name: '오준석의 플러터 생존코딩', price: 25000, color: 'white', isbn: '9791162244371', weight: 1.0);
  Computer computer = Computer(name: '데스크탑', price: 2000000, color: 'silver', makerName: 'Apple', weight: 5.67);

  print(book._weight);
  print(computer._weight);

  print(book.name);
  print(computer.name);



}
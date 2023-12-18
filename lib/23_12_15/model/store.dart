import 'package:json_annotation/json_annotation.dart';


import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

@JsonSerializable(explicitToJson: true)
class Store {
  String name;
  String address;
  String stock;
  int type;




  Map<String, dynamic> toJson() => _$StoreToJson(this);

//<editor-fold desc="Data Methods">
  Store({
    required this.name,
    required this.address,
    required this.stock,
    required this.type,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          address == other.address &&
          stock == other.stock &&
          type == other.type);

  @override
  int get hashCode =>
      name.hashCode ^ address.hashCode ^ stock.hashCode ^ type.hashCode;

  @override
  String toString() {
    return 'Store{' +
        ' name: $name,' +
        ' address: $address,' +
        ' stock: $stock,' +
        ' type: $type,' +
        '}';
  }

  Store copyWith({
    String? name,
    String? address,
    String? stock,
    int? type,
  }) {
    return Store(
      name: name ?? this.name,
      address: address ?? this.address,
      stock: stock ?? this.stock,
      type: type ?? this.type,
    );
  }


//</editor-fold>
}
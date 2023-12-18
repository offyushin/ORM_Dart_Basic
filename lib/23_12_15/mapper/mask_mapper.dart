import 'package:untitled/23_12_15/dto/MaskDto.dart';
import 'package:untitled/23_12_15/model/store.dart';


extension StoresToStore on Stores {
  Store toStore() {
    return Store(
      name: name ?? '',
      address: addr ?? '주소없음',
      stock: remainStat ?? 'null',
      type: type != null ? int.parse(type!) : 0
    );
  }
}

import 'package:untitled/23_12_15/data_source/mask_api.dart';
import 'package:untitled/23_12_15/dto/MaskDto.dart';
import 'package:untitled/23_12_15/mapper/mask_mapper.dart';

import 'model/store.dart';

void main() async{
  final api = MaskApi();

  final MaskDto dto = await api.getMaskInfoResult();
  
  List<Store> stores = dto.stores
  ?.where((e) => e.remainStat != null) //거를 거 거르고
  .map((e) => e.toStore())
  .toList() ?? [];

  print(stores.toString());

}
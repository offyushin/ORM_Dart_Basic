import 'package:untitled/23_12_06/mystarcraft/unit.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/bionic/protoss/zealot.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/bionic/terran/marine.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/bionic/terran/medic.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/mechanic/protoss/dragun.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/mechanic/terran/scv.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/mechanic/terran/tank.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/mechanic/terran/vulture.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/protoss.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/terran.dart';
import 'package:untitled/23_12_06/mystarcraft/unitsproperties/zerg.dart';

abstract class Star {}

void main() {
  final player1 = <Terran>[];
  player1.add(Marine());
  player1.add(Medic());
  player1.add(Scv());
  player1.add(Tank());
  player1.add(Vulture());
  // addUnit(player1, Marine());

  final player2 = <Protoss>[];
  player2.add(Zealot());
  player2.add(Dragun());

  final player3 = <Zerg>[];
  player3.add(Zerg());

  /// 리스트에 추가할 수 있는 요소를 12개까지 제한하고 싶어서 제한하는 함수를 추가했었는데
  /// 에러가 자꾸 나서 포기합니다..
  /// 리스트가 맞는지도 모르겠습니다,,


  // final teamplayer1 = <Unit>[];
  // teamplayer1.add(Medic());
  // teamplayer1.add(Zealot());
  // teamplayer1.add(Scv());
  // teamplayer1.add(Tank());
  // teamplayer1.add(Vulture());
  // teamplayer1.add(Dragun());
  // teamplayer1.add(Medic());
  // teamplayer1.add(Zealot());
  // teamplayer1.add(Scv());
  // teamplayer1.add(Tank());
  // teamplayer1.add(Vulture());
  // teamplayer1.add(Dragun());
}

// void addUnit(List<Unit> unitList, Unit unit) {
//   if (unitList.length < 12) {
//     unitList.add(unit);
//   } else {
//     print('더 이상 유닛을 추가할 수 없습니다.');
//   }
// }
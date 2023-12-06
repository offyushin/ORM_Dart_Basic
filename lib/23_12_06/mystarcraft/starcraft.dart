import 'package:untitled/23_12_06/mystarcraft/unit/protoss/protoss.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/protoss/protossunit/dragun.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/protoss/protossunit/zealot.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terran.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terranunit/marine.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terranunit/medic.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terranunit/scv.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terranunit/tank.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/terran/terranunit/vulture.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/unit.dart';
import 'package:untitled/23_12_06/mystarcraft/unit/zerg/zerg.dart';

abstract class Star {}

void main() {
  final player1 = <Terran>[];
  addTerran(player1, Marine());
  addTerran(player1, Medic());
  addTerran(player1, Scv());
  addTerran(player1, Tank());
  addTerran(player1, Vulture());
  // addTerran(player1, Zealot());
  addTerran(player1, Marine());
  addTerran(player1, Marine());
  addTerran(player1, Marine());
  addTerran(player1, Marine());
  addTerran(player1, Marine());
  addTerran(player1, Marine());

  final player2 = <Protoss>[];
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
  addProtoss(player2, Zealot());
}

void addTerran(List<Terran> unitList, Terran terran) {
  if (unitList.length < 12) {
    unitList.add(terran);
  } else {
    print('더 이상 유닛을 추가할 수 없습니다.');
  }
}

void addZerg(List<Zerg> unitList, Zerg zerg) {
  if (unitList.length < 12) {
    unitList.add(zerg);
  } else {
    print('더 이상 유닛을 추가할 수 없습니다.');
  }
}

void addProtoss(List<Protoss> unitList, Protoss protoss) {
  if (unitList.length < 12) {
    unitList.add(protoss);
  } else {
    print('더 이상 유닛을 추가할 수 없습니다.');
  }
}

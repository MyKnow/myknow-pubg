// lib/models/item/rifle/rifle_list.dart
// Created by MyKnow on August 25, 2025
// : Rifle List를 정의합니다.

import 'package:myknow/models/item/rifle/list/ar_list.dart';
import 'package:myknow/models/item/rifle/list/lmg_list.dart';
import 'package:myknow/models/item/rifle/list/pistol_list.dart';
import 'package:myknow/models/item/rifle/list/sg_list.dart';
import 'package:myknow/models/item/rifle/list/smg_list.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/item/rifle/list/sr_list.dart';
import 'package:myknow/models/map/map_model.dart';

// # Rifle List
// : Rifle 리스트
//
// # [Parameters]
// - rifles -> List<Rifle>: Rifle 전체 리스트
//    1. AKM(최초의 무기)
//    2. M416(최초의 무기)
//    3. M16A4(최초의 무기)
//    4. SCAR-L(최초의 무기)
//    5. Kar98k(최초의 무기)
//    6. M24(최초의 무기)
//    7. AWM(최초의 무기)
//    8. Tommy Gun(Thompson, 최초의 무기)
//    9. Micro UZI(최초의 무기)
//    10. UMP9(최초의 무기)
//    11. M249(최초의 무기)
//    12. S1897(최초의 무기)
//    13. S686(최초의 무기)
//    14. S12K(최초의 무기)
//    15. P92(최초의 무기)
//    16. P1911(최초의 무기)
//    17. R1895(최초의 무기)
//    18. SKS(15번째)
//    19. Vector(16번째)
//    20. VSS(17번째)
//    21. Groza(18번째)
//    22. P18C(18번째)
//    23. Mk.14(20번째)
//    24. Mini-14(21번째)
//    25. DP-28(22번째)
//    26. AUG(23번째)
//    27. R45(24번째)
//    28. Win94(25번째)
//    29. Sword-off(26번째)
//    30. SLR(27번째)
//    31. QBZ(28번째)
//    32. QBU(29번째)
//    33. BerylM762(30번째)
//    34. MK47-Mutant(31번째)
//    35. Scorpion(32번째)
//    36. G36C(33번째)
//    37. PP-19 Bizon(34번째)
//    38. Crossbow(35번째)
//    39. Flare Gun(37번째)
//    40. Panzerfaust(38번째)
//    41. MP5K(39번째)
//    42. Deagle(40번째)
//    43. DBS(41번째)
//    44. Mosin-Nagant(46번째)
//    45. MG3(47번째)
//    46. Lynx(52번째)
//    47. K2(53번째)
//    48. Mk12(54번째)
//    49. P90(55번째)
//    50. Mortar(56번째)
//    51. M79(57번째)
//    52. ACE(60번째)
//    53. O12(63번째)
//    54. MP9(65번째)
//    55. FAMAS(68번쨰)
//    56. Dragunov(69번째)
//    57. JS9(70번째)
//
// # [Methods]
// - getAllRifle -> List<Rifle>: Rifle을 가져온다.
// - getRifleById -> Rifle: Rifle ID로 Rifle을 가져온다.
// - getRifleByName -> Rifle: Rifle 이름으로 Rifle을 가져온다.
// - getRifleByType -> List<Rifle>: Rifle 종류로 Rifle을 가져온다.
// - getRifleBySpawnMap -> List<Rifle>: Rifle 등장 가능한 맵으로 Rifle을 가져온다.
// - getRifleByIsSupplyOnly -> List<Rifle>: Rifle 보급 전용 무기로 Rifle을 가져온다.

class RifleList {
  static final List<Rifle> rifles = [
    ...ARList.values,
    ...SRList.values,
    ...PistolList.values,
    ...SGList.values,
    ...LMGList.values,
    ...SMGList.values,
  ];

  static List<Rifle> getAllRifle() => rifles;

  static Rifle getRifleById(int id) =>
      rifles.firstWhere((rifle) => rifle.id == id);

  static Rifle getRifleByName(String name) =>
      rifles.firstWhere((rifle) => rifle.codeName == name);

  static List<Rifle> getRifleByType(RifleType type) =>
      rifles.where((rifle) => rifle.rifleType == type).toList();

  static List<Rifle> getRifleBySpawnMap(GameMap map) =>
      rifles.where((rifle) => rifle.spawnMap.contains(map)).toList();

  static List<Rifle> getRifleByIsSupplyOnly(bool isSupplyOnly) =>
      rifles.where((rifle) => rifle.isSupplyOnly == isSupplyOnly).toList();
}

// lib/models/item/rifle/list/ar_list.dart
// Created by MyKnow on August 25, 2025
// : 돌격소총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # AR List
// : 돌격소총 리스트
//
// # [Parameters]
// - values -> List<Rifle>: 돌격소총 리스트
class ARList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final arDefaultMagazine = {
    MagazineType.original: 30,
    MagazineType.quick: 30,
    MagazineType.large: 42,
    MagazineType.largeQuick: 40,
  };

  static final arDefaultFireMode = const [FireMode.single, FireMode.auto];

  static final List<Rifle> values = [
    // AKM
    Rifle(
      id: 1,
      codeName: 'Item_Weapon_AK47_C',
      assetPath: '$imageAssetPath/Item_Weapon_AK47_C.png',
      rifleType: RifleType.ar,
      ammunitionType: AmmunitionType.b762,
      sizeOfMagazine: arDefaultMagazine,
      fireMode: arDefaultFireMode,
      damage: 48.0,
      rpm: const {FireMode.single: 600, FireMode.auto: 600},
      bulletSpeed: (239, 715),
      reloadTime: (3.22, 2.3),
      spread: 6,
      moa: 4.8,
      damageReductionDistance: (51, 295),
      zeroDistance: (100, 1000),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // M416
    Rifle(
      id: 2,
      codeName: 'Item_Weapon_HK416_C',
      assetPath: '$imageAssetPath/Item_Weapon_HK416_C.png',
      rifleType: RifleType.ar,
      ammunitionType: AmmunitionType.b556,
      sizeOfMagazine: arDefaultMagazine,
      fireMode: const [FireMode.single, FireMode.auto],
      damage: 40.0,
      rpm: const {FireMode.single: 700, FireMode.auto: 700},
      bulletSpeed: (273, 880),
      reloadTime: (3.14, 2.43),
      spread: 4,
      moa: 2.6,
      damageReductionDistance: (61, 447),
      zeroDistance: (100, 400),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // M16A4
    Rifle(
      id: 3,
      codeName: 'Item_Weapon_M16A4_C',
      assetPath: '$imageAssetPath/Item_Weapon_M16A4_C.png',
      rifleType: RifleType.ar,
      ammunitionType: AmmunitionType.b556,
      sizeOfMagazine: arDefaultMagazine,
      fireMode: [FireMode.single, FireMode.threeBurst],
      damage: 43.0,
      rpm: const {FireMode.single: 800, FireMode.threeBurst: 800},
      bulletSpeed: (278, 910),
      reloadTime: (3.36, 3.05),
      spread: 5,
      moa: 4,
      damageReductionDistance: (81, 445),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // SCAR-L
    Rifle(
      id: 4,
      codeName: 'Item_Weapon_SCAR-L_C',
      assetPath: '$imageAssetPath/Item_Weapon_SCAR-L_C.png',
      rifleType: RifleType.ar,
      ammunitionType: AmmunitionType.b556,
      sizeOfMagazine: arDefaultMagazine,
      fireMode: arDefaultFireMode,
      damage: 42.0,
      rpm: const {FireMode.single: 650, FireMode.auto: 650},
      bulletSpeed: (272, 870),
      reloadTime: (3.17, 2.45),
      spread: 4,
      moa: 1.3,
      damageReductionDistance: (71, 496),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),
  ];
}

// lib/models/item/rifle/list/smg_list.dart
// Created by MyKnow on August 27, 2025
// : 기관단총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # SMG List
// : 기관단총 리스트
//
// # [Elements]
// - values -> List<Rifle>: 기관단총 리스트
class SMGList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final smgDefaultFireMode = const [FireMode.single, FireMode.auto];

  static final List<Rifle> values = [
    // Tommy Gun
    Rifle(
      id: 8,
      codeName: 'Item_Weapon_Thompson_C',
      assetPath: '$imageAssetPath/Item_Weapon_Thompson_C.png',
      rifleType: RifleType.smg,
      ammunitionType: AmmunitionType.b9,
      sizeOfMagazine: {
        MagazineType.original: 30,
        MagazineType.quick: 30,
        MagazineType.largeQuick: 50,
        MagazineType.large: 55,
      },
      fireMode: smgDefaultFireMode,
      damage: 42,
      rpm: const {FireMode.single: 750, FireMode.auto: 750},
      bulletSpeed: (280, 280),
      reloadTime: (3.45, 2.85),
      spread: 4.5,
      moa: 4.9,
      damageReductionDistance: (0, 200),
      zeroDistance: (50, 150),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // Micro Uzi
    Rifle(
      id: 9,
      codeName: 'Item_Weapon_UZI_C',
      assetPath: '$imageAssetPath/Item_Weapon_UZI_C.png',
      rifleType: RifleType.smg,
      ammunitionType: AmmunitionType.b9,
      sizeOfMagazine: {
        MagazineType.original: 25,
        MagazineType.quick: 25,
        MagazineType.largeQuick: 35,
        MagazineType.large: 37,
      },
      fireMode: smgDefaultFireMode,
      damage: 27.3,
      rpm: const {FireMode.single: 1250, FireMode.auto: 1250},
      bulletSpeed: (350, 350),
      reloadTime: (3.1, 2.5),
      spread: 5.5,
      moa: 9.0,
      damageReductionDistance: (0, 200),
      zeroDistance: (50, 100),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // UMP
    Rifle(
      id: 10,
      codeName: 'Item_Weapon_UMP_C',
      assetPath: '$imageAssetPath/Item_Weapon_UMP_C.png',
      rifleType: RifleType.smg,
      ammunitionType: AmmunitionType.b9,
      sizeOfMagazine: {
        MagazineType.original: 25,
        MagazineType.quick: 25,
        MagazineType.largeQuick: 35,
        MagazineType.large: 37,
      },
      fireMode: [...smgDefaultFireMode, FireMode.twoBurst],
      damage: 42,
      rpm: const {
        FireMode.single: 670,
        FireMode.auto: 670,
        FireMode.twoBurst: 706,
      },
      bulletSpeed: (360, 360),
      reloadTime: (3.1, 2.55),
      spread: 5.5,
      moa: 4.5,
      damageReductionDistance: (0, 200),
      zeroDistance: (50, 150),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),
  ];
}

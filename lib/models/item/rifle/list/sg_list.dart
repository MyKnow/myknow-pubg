// lib/models/item/rifle/list/sg_list.dart
// Created by MyKnow on August 27, 2025
// : 산탄총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # SG List
// : 산탄총 리스트
//
// # [Elements]
// - values -> List<Rifle>: 산탄총 리스트
class SGList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final sgDefaultFireMode = const [FireMode.single];

  static final List<Rifle> values = [
    // S1897
    Rifle(
      id: 12,
      codeName: 'Item_Weapon_Winchester_C',
      assetPath: '$imageAssetPath/Item_Weapon_Winchester_C.png',
      rifleType: RifleType.sg,
      ammunitionType: AmmunitionType.b12,
      sizeOfMagazine: {MagazineType.original: 5, MagazineType.quick: 5},
      fireMode: sgDefaultFireMode,
      damage: 26 * 9 * 0.9,
      bulletSpeed: (360, 360),
      rpm: const {FireMode.single: 109},
      reloadTime: (4.21, 0.635),
      zeroDistance: (50, 50),
      spread: 5.5,
      moa: 0.0,
      damageReductionDistance: (10, 80),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // S686
    Rifle(
      id: 13,
      codeName: 'Item_Weapon_Berreta686_C',
      assetPath: '$imageAssetPath/Item_Weapon_Berreta686_C.png',
      rifleType: RifleType.sg,
      ammunitionType: AmmunitionType.b12,
      sizeOfMagazine: {MagazineType.original: 2, MagazineType.quick: 2},
      fireMode: sgDefaultFireMode,
      damage: 26 * 9 * 0.9,
      bulletSpeed: (360, 360),
      rpm: const {FireMode.single: 300},
      reloadTime: (3.0, 3.0),
      zeroDistance: (50, 50),
      spread: 5.0,
      moa: 0.0,
      damageReductionDistance: (7, 80),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // S12K
    Rifle(
      id: 14,
      codeName: 'Item_Weapon_Saiga12_C',
      assetPath: '$imageAssetPath/Item_Weapon_Saiga12_C.png',
      rifleType: RifleType.sg,
      ammunitionType: AmmunitionType.b12,
      sizeOfMagazine: {
        MagazineType.original: 5,
        MagazineType.quick: 5,
        MagazineType.large: 11,
        MagazineType.largeQuick: 10,
      },
      fireMode: sgDefaultFireMode,
      damage: 23 * 9 * 0.9,
      bulletSpeed: (360, 360),
      rpm: const {FireMode.single: 240},
      reloadTime: (3.0, 2.4),
      zeroDistance: (50, 50),
      spread: 6.0,
      moa: 0.0,
      damageReductionDistance: (4, 80),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),
  ];
}

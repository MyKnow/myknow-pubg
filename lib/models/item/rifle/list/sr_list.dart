// lib/models/item/rifle/list/sr_list.dart
// Created by MyKnow on August 25, 2025
// : 저격소총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # SR List
// : 저격소총 리스트
//
// # [Elements]
// - values -> List<Rifle>: 저격소총 리스트
class SRList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final srDefaultMagazine = {MagazineType.original: 5};

  static final srDefaultFireMode = const [FireMode.single];

  static final List<Rifle> values = [
    // Kar98k
    Rifle(
      id: 5,
      codeName: 'Item_Weapon_Kar98k_C',
      assetPath: '$imageAssetPath/Item_Weapon_Kar98k_C.png',
      rifleType: RifleType.sr,
      ammunitionType: AmmunitionType.b762,
      sizeOfMagazine: {...srDefaultMagazine, MagazineType.quick: 5},
      fireMode: srDefaultFireMode,
      damage: 102.7,
      rpm: const {FireMode.single: 37},
      bulletSpeed: (785, 785),
      reloadTime: (4.0, 1.69),
      spread: 8,
      moa: 0.7,
      damageReductionDistance: (101, 487),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // M24
    Rifle(
      id: 6,
      codeName: 'Item_Weapon_M24_C',
      assetPath: '$imageAssetPath/Item_Weapon_M24_C.png',
      rifleType: RifleType.sr,
      ammunitionType: AmmunitionType.b762,
      sizeOfMagazine: {
        ...srDefaultMagazine,
        MagazineType.quick: 5,
        MagazineType.large: 8,
        MagazineType.largeQuick: 7,
      },
      fireMode: srDefaultFireMode,
      damage: 97.5,
      rpm: const {FireMode.single: 39},
      bulletSpeed: (815, 815),
      reloadTime: (4.2, 1.8),
      spread: 7.5,
      moa: 0.33,
      damageReductionDistance: (121, 584),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // AWM
    Rifle(
      id: 7,
      codeName: 'Item_Weapon_AWM_C',
      assetPath: '$imageAssetPath/Item_Weapon_AWM_C.png',
      rifleType: RifleType.sr,
      ammunitionType: AmmunitionType.b300,
      sizeOfMagazine: {
        ...srDefaultMagazine,
        MagazineType.quick: 5,
        MagazineType.large: 8,
        MagazineType.largeQuick: 7,
      },
      fireMode: srDefaultFireMode,
      damage: 136.5,
      rpm: const {FireMode.single: 32},
      bulletSpeed: (954, 954),
      reloadTime: (4.6, 2.3),
      spread: 7.5,
      moa: 0.25,
      damageReductionDistance: (156, 691),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: true,
    ),
  ];
}

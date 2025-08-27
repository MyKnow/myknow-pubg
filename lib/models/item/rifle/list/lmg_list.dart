// lib/models/item/rifle/list/lmg_list.dart
// Created by MyKnow on August 27, 2025
// : 경기관총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # LMG List
// : 경기관총 리스트
//
// # [Elements]
// - values -> List<Rifle>: 경기관총 리스트
class LMGList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final lmgDefaultFireMode = const [FireMode.auto];

  static final List<Rifle> values = [
    // M249
    Rifle(
      id: 11,
      codeName: 'Item_Weapon_M249_C',
      assetPath: '$imageAssetPath/Item_Weapon_M249_C.png',
      rifleType: RifleType.lmg,
      ammunitionType: AmmunitionType.b556,
      sizeOfMagazine: {
        MagazineType.original: 75,
        MagazineType.quick: 75,
        MagazineType.largeQuick: 150,
        MagazineType.large: 160,
      },
      fireMode: lmgDefaultFireMode,
      damage: 43.05,
      rpm: const {FireMode.auto: 800},
      bulletSpeed: (278, 915),
      reloadTime: (7.59, 7.0),
      spread: 8.0,
      moa: 3.0,
      damageReductionDistance: (76, 385),
      zeroDistance: (100, 500),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),
  ];
}

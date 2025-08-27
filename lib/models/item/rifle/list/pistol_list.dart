// lib/models/item/rifle/list/pistol_list.dart
// Created by MyKnow on August 27, 2025
// : 권총 List를 정의합니다.

import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:myknow/models/map/map_model.dart';

// # Pistol List
// : 권총 리스트
//
// # [Elements]
// - values -> List<Rifle>: 권총 리스트
class PistolList {
  static final imageAssetPath = '${Asset.image.path}/items/Weapon/Main';

  static final pistolDefaultFireMode = const [FireMode.single];

  static final List<Rifle> values = [
    // P92
    Rifle(
      id: 15,
      codeName: 'Item_Weapon_M9_C',
      assetPath: '$imageAssetPath/Item_Weapon_M9_C.png',
      rifleType: RifleType.pistol,
      ammunitionType: AmmunitionType.b9,
      sizeOfMagazine: {
        MagazineType.original: 15,
        MagazineType.quick: 15,
        MagazineType.largeQuick: 20,
        MagazineType.large: 22,
      },
      fireMode: pistolDefaultFireMode,
      damage: 34,
      rpm: const {FireMode.single: 600},
      bulletSpeed: (380, 380),
      reloadTime: (2.0, 1.7),
      zeroDistance: (50, 50),
      spread: 2.5,
      moa: 5.0,
      damageReductionDistance: (0.8, 833),
      spawnMap: MapList().maps,
      isSupplyOnly: false,
    ),

    // P1911
    Rifle(
      id: 16,
      codeName: 'Item_Weapon_M1911_C',
      assetPath: '$imageAssetPath/Item_Weapon_M1911_C.png',
      rifleType: RifleType.pistol,
      ammunitionType: AmmunitionType.b45,
      sizeOfMagazine: {
        MagazineType.original: 7,
        MagazineType.quick: 7,
        MagazineType.largeQuick: 12,
        MagazineType.large: 14,
      },
      fireMode: pistolDefaultFireMode,
      damage: 42,
      bulletSpeed: (250, 250),
      rpm: const {FireMode.single: 546},
      reloadTime: (2.1, 1.8),
      zeroDistance: (50, 50),
      spread: 3.0,
      moa: 5.0,
      damageReductionDistance: (0.9, 1000),
      spawnMap: [
        GameMap.fromEnum(MapName.erangel),
        GameMap.fromEnum(MapName.miramar),
        GameMap.fromEnum(MapName.sanhok),
        GameMap.fromEnum(MapName.vikendi),
        GameMap.fromEnum(MapName.paramo),
        GameMap.fromEnum(MapName.taego),
      ],
      isSupplyOnly: false,
    ),

    // R1895
    Rifle(
      id: 17,
      codeName: 'Item_Weapon_NagantM1895_C',
      assetPath: '$imageAssetPath/Item_Weapon_NagantM1895_C.png',
      rifleType: RifleType.pistol,
      ammunitionType: AmmunitionType.b762,
      sizeOfMagazine: {MagazineType.original: 7},
      fireMode: pistolDefaultFireMode,
      damage: 64,
      bulletSpeed: (330, 330),
      rpm: const {FireMode.single: 300},
      reloadTime: (6.25, 1.0),
      zeroDistance: (50, 50),
      spread: 3.5,
      moa: 4.0,
      damageReductionDistance: (3, 1000),
      spawnMap: [
        GameMap.fromEnum(MapName.erangel),
        GameMap.fromEnum(MapName.paramo),
        GameMap.fromEnum(MapName.taego),
        GameMap.fromEnum(MapName.rondo),
      ],
      isSupplyOnly: false,
    ),
  ];
}

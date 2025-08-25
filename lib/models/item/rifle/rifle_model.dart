// lib/models/item/rifle/rifle_model.dart
// Created by MyKnow on August 25, 2025
// : Rifle Model을 정의합니다.

import 'package:myknow/models/map/map_model.dart';

// # FireMode
// : Rifle 발사 모드 Enum
//
// # Elements
// 1. single: 단발
// 2. twoBurst: 2점사
// 3. threeBurst: 3점사
// 4. auto: 자동
enum FireMode { single, twoBurst, threeBurst, auto }

// # RifleType
// : 총기 종류 Enum
//
// # Elements
// 1. ar: 돌격소총
// 2. dmr: 지정사수소총
// 3. sr: 저격소총
// 4. smg: 기관단총
// 5. sg: 산탄총
// 6. lmg: 경기관총
// 7. misc: 특수총
// 8. pistol: 권총
enum RifleType { ar, dmr, sr, smg, sg, lmg, misc, pistol }

// # MagazineType
// : 탄창 종류 Enum
//
// # Elements
// 1. original: 기본 탄창
// 2. quick: 퀵드로우
// 3. large: 대용량
// 4. largeQuick: 대용량 퀵드로우
enum MagazineType { original, quick, large, largeQuick }

// # Rifle Model
// : 총기류의 Model
//
// [Parameters]
// - id -> int: 고유 ID
// - name -> String: 원문 이름
// - assetPath -> String: 이미지 경로
// - rifleType -> RifleType: Rifle 종류
// - sizeOfMagazine -> Map<MagazineType, int>: 탄창 크기
// - fireMode -> List<FireMode>: 발사 모드
// - damage -> double: 기본 피해
// - rpm -> Map<FireMode, int>: 발사속도
// - bulletSpeed -> int: 탄속(m/s)
// - reloadTime -> Map<MagazineType, double>: 재장전 시간
// - spread -> int: 탄퍼짐
// - moa -> double: MOA
// - damageReductionDistance -> int: 피해 감소 거리
// - spawnMap -> List<GameMap>: 등장 가능한 맵
// - isSupplyOnly -> bool: 보급 전용 무기
class Rifle {
  final int id;
  final String name;
  final String assetPath;
  final RifleType rifleType;
  final Map<MagazineType, int> sizeOfMagazine;
  final List<FireMode> fireMode;
  final double damage;
  final Map<FireMode, int> rpm;
  final int bulletSpeed;
  final Map<MagazineType, double> reloadTime;
  final int spread;
  final double moa;
  final int damageReductionDistance;
  final List<GameMap> spawnMap;
  final bool isSupplyOnly;

  const Rifle({
    required this.id,
    required this.name,
    required this.assetPath,
    required this.rifleType,
    required this.sizeOfMagazine,
    required this.fireMode,
    required this.damage,
    required this.rpm,
    required this.bulletSpeed,
    required this.reloadTime,
    required this.spread,
    required this.moa,
    required this.damageReductionDistance,
    required this.spawnMap,
    required this.isSupplyOnly,
  });
}

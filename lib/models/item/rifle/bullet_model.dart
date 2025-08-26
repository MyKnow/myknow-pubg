// lib/models/item/rifle/bullet_model.dart
// Created by MyKnow on August 25, 2025
// : Rifle의 탄종류와 각 특성을 정의합니다.

// # BulletType
// : 탄종류 Enum
//
// # Elements
// 1. b762: 7.62mm
// 2. b556: 5.56mm
// 3. b9: 9mm
// 4. b300: 300 매그넘
// 5. b45: .45 ACP
// 6. b57: 5.7mm
// 7. b12: 12 게이지
// 8. b12s: 12 게이지 슬러그
// 9. bolt: 화살
// 10. flare: 플레어
// 11. mortar: 박격포탄
import 'package:myknow/models/asset_model.dart';

enum BulletType {
  b762,
  b556,
  b9,
  b300,
  b45,
  b57,
  b12,
  b12s,
  bolt,
  flare,
  mortar,
}

// # BulletTypeExtension
// : BulletType Enum을 위한 extension
//
// # Methods
// - getItemId -> String: Item ID
// - displayName -> String: 탄 종류 이름(한국어)
// - weight -> double: 탄종류 무게(발 당 무게)
//
extension BulletTypeExtension on BulletType {
  String get itemId {
    switch (this) {
      case BulletType.b762:
        return 'Item_Ammo_762mm_C';
      case BulletType.b556:
        return 'Item_Ammo_556mm_C';
      case BulletType.b9:
        return 'Item_Ammo_9mm_C';
      case BulletType.b300:
        return 'Item_Ammo_300Magnum_C';
      case BulletType.b45:
        return 'Item_Ammo_45ACP_C';
      case BulletType.b57:
        return 'Item_Ammo_57mm_C';
      case BulletType.b12:
        return 'Item_Ammo_12Guage_C';
      case BulletType.b12s:
        return 'Item_Ammo_12GuageSlug_C';
      case BulletType.bolt:
        return 'Item_Ammo_Bolt_C';
      case BulletType.flare:
        return 'Item_Ammo_Flare_C';
      case BulletType.mortar:
        return 'Item_Ammo_Mortar_C';
    }
  }

  // # displayName
  // : assets/jsons/dictionaries/telemetry/item/itemId.json에 정의된 이름을 가져온다.
  String get displayName {
    return Asset.json.getValueFromJson(itemId, 'displayName') ??
        'Unknown Bullet';
  }

  double get weight {
    switch (this) {
      case BulletType.b762:
        return 0.6;
      case BulletType.b556:
        return 0.5;
      case BulletType.b9:
        return 0.3;
      case BulletType.b300:
        return 1;
      case BulletType.b45:
        return 0.4;
      case BulletType.b57:
        return 0.2;
      case BulletType.b12:
        return 1.25;
      case BulletType.b12s:
        return 1.25;
      case BulletType.bolt:
        return 2;
      case BulletType.flare:
        return 1;
      case BulletType.mortar:
        return 20;
    }
  }
}

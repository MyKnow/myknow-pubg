// lib/models/item/rifle/ammunition_model.dart
// Created by MyKnow on August 25, 2025
// : PUBG에서 사용되는 탄종류와 각 특성을 정의합니다.

import 'package:myknow/models/asset_model.dart';

// # Type
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
enum AmmunitionType {
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

// # AmmunitionTypeExtension
// : AmmunitionType Enum을 위한 extension
//
// # Methods
// - getItemId -> String: Item ID
// - displayName -> String: 탄 종류 이름(한국어)
// - weight -> double: 탄종류 무게(발 당 무게)
//
extension AmmunitionTypeExtension on AmmunitionType {
  String get itemId {
    switch (this) {
      case AmmunitionType.b762:
        return 'Item_Ammo_762mm_C';
      case AmmunitionType.b556:
        return 'Item_Ammo_556mm_C';
      case AmmunitionType.b9:
        return 'Item_Ammo_9mm_C';
      case AmmunitionType.b300:
        return 'Item_Ammo_300Magnum_C';
      case AmmunitionType.b45:
        return 'Item_Ammo_45ACP_C';
      case AmmunitionType.b57:
        return 'Item_Ammo_57mm_C';
      case AmmunitionType.b12:
        return 'Item_Ammo_12Guage_C';
      case AmmunitionType.b12s:
        return 'Item_Ammo_12GuageSlug_C';
      case AmmunitionType.bolt:
        return 'Item_Ammo_Bolt_C';
      case AmmunitionType.flare:
        return 'Item_Ammo_Flare_C';
      case AmmunitionType.mortar:
        return 'Item_Ammo_Mortar_C';
    }
  }

  // # displayName
  // : assets/jsons/dictionaries/telemetry/item/itemId.json에 정의된 이름을 가져온다.
  String get displayName {
    final detailPath = 'dictionaries/telemetry/item/itemId';
    return Asset.json.getValueFromJson(detailPath, itemId) ?? 'Unknown Bullet';
  }

  double get weight {
    switch (this) {
      case AmmunitionType.b762:
        return 0.6;
      case AmmunitionType.b556:
        return 0.5;
      case AmmunitionType.b9:
        return 0.3;
      case AmmunitionType.b300:
        return 1;
      case AmmunitionType.b45:
        return 0.4;
      case AmmunitionType.b57:
        return 0.2;
      case AmmunitionType.b12:
        return 1.25;
      case AmmunitionType.b12s:
        return 1.25;
      case AmmunitionType.bolt:
        return 2;
      case AmmunitionType.flare:
        return 1;
      case AmmunitionType.mortar:
        return 20;
    }
  }

  String get imagePath {
    return '${Asset.image.path}/items/Ammunition/None/$itemId.png';
  }
}

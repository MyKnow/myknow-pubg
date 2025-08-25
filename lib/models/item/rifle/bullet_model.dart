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
// 6. b50: 50구경
// 7. b57: 5.7mm
// 8. b12: 12 게이지
// 9. b12s: 12 게이지 슬러그
// 10. arrow: 화살
// ! 판처파우스트, 박격포, 연막유탄, 신호탄은 제외
enum BulletType { b762, b556, b9, b300, b45, b50, b57, b12, b12s, arrow }

// # BulletTypeExtension
// : BulletType Enum을 위한 extension
//
// # Methods
// - displayName -> String: 탄 종류 이름(한국어)
// - weight -> double: 탄종류 무게(발 당 무게)
//
extension BulletTypeExtension on BulletType {
  String get displayName {
    switch (this) {
      case BulletType.b762:
        return '7.62mm';
      case BulletType.b556:
        return '5.56mm';
      case BulletType.b9:
        return '9mm';
      case BulletType.b300:
        return '300 매그넘';
      case BulletType.b45:
        return '.45 ACP';
      case BulletType.b50:
        return '50구경';
      case BulletType.b57:
        return '5.7mm';
      case BulletType.b12:
        return '12 게이지';
      case BulletType.b12s:
        return '12 게이지 슬러그';
      case BulletType.arrow:
        return '화살';
    }
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
      case BulletType.b50:
        return 0.0;
      case BulletType.b57:
        return 0.2;
      case BulletType.b12:
        return 1.25;
      case BulletType.b12s:
        return 1.25;
      case BulletType.arrow:
        return 2;
    }
  }
}

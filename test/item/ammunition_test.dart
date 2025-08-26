// test/item/ammunition_test.dart
// Created by MyKnow on August 26, 2025
// : 탄종류와 각 특성을 정의하는 Test들을 정의합니다.

import 'dart:io';

import 'package:test/test.dart';
import 'package:myknow/models/item/rifle/ammunition_model.dart';

import '../test_logger.dart';

// # [getAmmunitionNameFromJson]
// : AmmunitionType Enum의 Item ID를 가져와서 assets/jsons/dictionaries/telemetry/item/itemId.json에 정의된 이름을 가져온다.
//
// # [Success]
// : Enum에 정의된 id에 대해 displayName이 정의되어 있다.
//
// # [Fail]
// : Enum에 정의된 id에 대해 displayName이 정의되어 있지 않아 Null이 반환된다.
void getAmmunitionNameFromJson() {
  final listOfBullet = AmmunitionType.values;

  for (final bullet in listOfBullet) {
    final displayName = AmmunitionTypeExtension(bullet).displayName;
    expect(
      displayName,
      isNotNull,
      reason: TestLogger.reason(
        'Null returned: ${bullet.itemId}',
        functionName: 'getAmmunitionNameFromJson',
      ),
    );
  }
}

// # [getAmmunitionImage]
// : AmmunitionType Enum의 Item ID를 가져와서 assets/images/items/Ammunition/None/ItemID.png 파일이 있는지 확인한다.
//
// # [Success]
// : 이미지가 경로에 있다.
//
// # [Fail]
// : 이미지가 경로에 없어 Null이 반환된다.
void getAmmunitionImage() {
  final listOfBullet = AmmunitionType.values;

  for (final bullet in listOfBullet) {
    final imagePath = AmmunitionTypeExtension(bullet).imagePath;
    final image = File(imagePath);

    expect(
      image,
      isNotNull,
      reason: TestLogger.reason(
        'Image not found: $imagePath',
        functionName: 'getAmmunitionImage',
      ),
    );
  }
}

void main() {
  // json_test.dart 테스트
  test('Ammo JSON 테스트', () {
    getAmmunitionNameFromJson();
  });

  test('Ammo Image 테스트', () {
    getAmmunitionImage();
  });
}

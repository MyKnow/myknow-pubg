// test/item/rifle_test.dart
// Created by MyKnow on August 26, 2025
// : Rifle과 각 특성을 정의하는 Test들을 정의합니다.

import 'dart:io';

import 'package:myknow/models/item/rifle/rifle_list.dart';
import 'package:myknow/models/item/rifle/rifle_model.dart';
import 'package:test/test.dart';

import '../test_logger.dart';

// # [getRifleNameFromJson]
// : Rifle Enum의 Item ID를 가져와서 assets/jsons/dictionaries/telemetry/item/itemId.json에 정의된 이름을 가져온다.
//
// # [Success]
// : Enum에 정의된 id에 대해 displayName이 정의되어 있다.
//
// # [Fail]
// : Enum에 정의된 id에 대해 displayName이 정의되어 있지 않아 Null이 반환된다.
void getRifleNameFromJson() {
  final listOfRifleType = RifleType.values;

  for (final rifleType in listOfRifleType) {
    final listOfRifleByType = RifleList.getRifleByType(rifleType);

    for (final rifle in listOfRifleByType) {
      final displayName = rifle.displayName;

      expect(
        displayName,
        isNotNull,
        reason: TestLogger.reason(
          'Null returned: ${rifle.codeName}',
          functionName: 'getRifleNameFromJson',
        ),
      );
    }
  }
}

// # [getRifleImageFromFile]
// : Rifle 각각의 assetPath를 가져와서 파일이 존재하는지 확인한다.
//
// # [Success]
// : 파일이 존재한다.
//
// # [Fail]
// : 파일이 존재하지 않는다.
void getRifleImageFromFile() {
  final listOfRifleType = RifleType.values;

  for (final rifleType in listOfRifleType) {
    final listOfRifleByType = RifleList.getRifleByType(rifleType);

    for (final rifle in listOfRifleByType) {
      final image = File(rifle.assetPath);
      final result = image.existsSync();

      expect(
        result,
        true,
        reason: TestLogger.reason(
          'File not found: ${rifle.assetPath}',
          functionName: 'getRifleImageFromFile',
        ),
      );
    }
  }
}

void main() {
  // json_test.dart 테스트
  test('Rifle 이름 테스트', () {
    getRifleNameFromJson();
  });

  test('Rifle 이미지 테스트', () {
    getRifleImageFromFile();
  });
}

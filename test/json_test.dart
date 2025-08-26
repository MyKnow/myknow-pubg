// test/json_test.dart
// Created by MyKnow on August 26, 2025
// : JSON 파일을 읽어오는 Test들을 정의합니다.

import 'package:test/test.dart';
import 'package:myknow/models/asset_model.dart';
import 'package:myknow/models/item/rifle/bullet_model.dart';

import 'test_logger.dart';

// # getBulletNameFromJson
// : BulletType Enum의 Item ID를 가져와서 assets/jsons/dictionaries/telemetry/item/itemId.json에 정의된 이름을 가져온다.
//
// # Success
// : Enum에 정의된 id에 대해 displayName이 정의되어 있다.
//
// # Fail
// : Enum에 정의된 id에 대해 displayName이 정의되어 있지 않아 Null이 반환된다.
void getBulletNameFromJson() {
  final detailPath = 'dictionaries/telemetry/item/itemId';

  final listOfBulletId = BulletType.values.map((e) => e.itemId).toList();

  for (final bulletId in listOfBulletId) {
    final displayName = Asset.json.getValueFromJson(detailPath, bulletId);
    expect(
      displayName,
      isNotNull,
      reason: TestLogger.reason(
        'Null returned: $bulletId',
        functionName: 'getBulletNameFromJson',
      ),
    );
  }
}

void main() {
  // json_test.dart 테스트
  test('Ammo JSON 테스트', () {
    getBulletNameFromJson();
  });
}

// lib/models/asset_model.dart
// Created by MyKnow on August 12, 2025
// : App의 Asset을 관리하는 Model을 정의합니다.

// Asset Enum
// Asset: Asset Path
//
// # Elements
// 1. image: 이미지
// 2. sound: 사운드
// 3. json: JSON 파일
import 'dart:convert';
import 'dart:io';

enum Asset { image, sound, json }

extension AssetExtension on Asset {
  String get path {
    switch (this) {
      case Asset.image:
        return 'assets/images';
      case Asset.sound:
        return 'assets/sounds';
      case Asset.json:
        return 'assets/jsons';
    }
  }

  String get name {
    switch (this) {
      case Asset.image:
        return 'images';
      case Asset.sound:
        return 'sounds';
      case Asset.json:
        return 'jsons';
    }
  }
}

// # JsonExtension
// : Asset Enum을 위한 extension
//
// # Methods
// - getValueFromJson -> String: 지정된 detailPath의 JSON 파일에서, key에 해당하는 value를 가져온다.
//
extension JsonExtension on Asset {
  String? getValueFromJson(String detailPath, String key) {
    final jsonPath = path;
    final jsonFile = File('$jsonPath/$detailPath.json');
    final jsonContent = jsonFile.readAsStringSync();
    final jsonMap = json.decode(jsonContent);

    final value = jsonMap[key] as String?;
    return value;
  }
}

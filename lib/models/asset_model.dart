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

import 'package:flutter/services.dart' show rootBundle;

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

class AssetCache {
  static final Map<String, dynamic> _cache = {};

  /// 앱 시작 시 필요한 JSON 파일들을 미리 읽어오기
  static Future<void> preload() async {
    final content = await rootBundle.loadString(
      'assets/jsons/dictionaries/telemetry/item/itemId.json',
    );
    _cache['itemId'] = json.decode(content);
  }

  /// 캐시에서 동기적으로 접근
  static dynamic get(String key) {
    return _cache[key];
  }
}

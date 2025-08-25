// lib/models/asset_model.dart
// Created by MyKnow on August 12, 2025
// : App의 Asset을 관리하는 Model을 정의합니다.

// Asset Enum
// Asset: Asset Path
enum Asset { image, sound, video }

extension AssetExtension on Asset {
  String get path {
    switch (this) {
      case Asset.image:
        return 'assets/images';
      case Asset.sound:
        return 'assets/sounds';
      case Asset.video:
        return 'assets/videos';
    }
  }

  String get name {
    switch (this) {
      case Asset.image:
        return 'images';
      case Asset.sound:
        return 'sounds';
      case Asset.video:
        return 'videos';
    }
  }
}

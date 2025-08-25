// lib/models/map_model.dart
// Created by MyKnow on August 12, 2025
// : PUBG Game의 Map을 보여주는 View의 Model을 정의합니다.

// GameMap Class
// [Parameters]
// - id: 고유 ID
// - name: 원문 이름
// - assetPath: 이미지 경로
// - sideLengthKm: 한 변 길이 (km)
// - zoomSwitchThreshold: 줌 스위치 임계값 (기본값: 2.0)
//
// [Methods]
// - fromId: Map ID로 Map을 반환하는 함수
//
import 'package:myknow/models/asset_model.dart';

class GameMap {
  // Unique ID
  final int id;

  // 원문 이름
  final String name;

  // Text 버전 이미지 경로
  final String? textVersionAssetPath;

  // No Text 버전 이미지 경로
  final String noTextVersionAssetPath;

  // 한 변 길이 km
  final double sideLengthKm;

  // 줌 스위치 임계값
  final double zoomSwitchThreshold;

  // 마커 위치 List
  final List<Marker> markers;

  const GameMap({
    required this.id,
    required this.name,
    required this.markers,
    required this.textVersionAssetPath,
    required this.noTextVersionAssetPath,
    required this.sideLengthKm,
    this.zoomSwitchThreshold = 10.0,
  });

  // Map ID로 Map을 반환하는 함수
  static GameMap fromId(int id) {
    return MapList().maps[id];
  }
}

// Map List (id. name. sideLengthKm)
// 0. Erangel: 8.0km
// 1. Vikendi: 8.0km
// 2. Deston: 8.0km
// 3. Haven: 1.0km
// 4. Karakin: 2.0km
// 5. Miramar: 8.0km
// 6. Paramo: 3.0km
// 7. Rondo: 8.0km
// 8. Sanhok: 4.0km
// 9. Taego: 8.0km
// 10. Training_Main: 2.0km
class MapList {
  // Map 정보 List<Map<String, double>>
  final List<Map<String, double>> mapInfos = [
    {'Erangel': 8.0},
    {'Vikendi': 8.0},
    {'Deston': 8.0},
    {'Haven': 1.0},
    {'Karakin': 2.0},
    {'Miramar': 8.0},
    {'Paramo': 3.0},
    {'Rondo': 8.0},
    {'Sanhok': 4.0},
    {'Taego': 8.0},
    {'Training_Main': 2.0},
    // 'Boardwalk',
    // 'Camp_Jackal',
    // 'Italy_Bomb',
  ];

  // No Text 버전만 있는 맵 이름 List
  //   final List<String> noTextMapNames = ['Boardwalk', 'Italy_Bomb'];

  // Map List
  final List<GameMap> maps = [];

  // Map List 생성
  MapList() {
    for (int i = 0; i < mapInfos.length; i++) {
      maps.add(
        GameMap(
          id: i,
          name: mapInfos[i].keys.first,
          textVersionAssetPath:
              '${Asset.image.path}/maps/${mapInfos[i].keys.first}_Main_High_Res.webp',
          noTextVersionAssetPath:
              '${Asset.image.path}/maps/${mapInfos[i].keys.first}_Main_No_Text_High_Res.webp',
          markers: [],
          sideLengthKm: mapInfos[i].values.first,
        ),
      );
    }
  }
}

// 마커 종류 열거형
// 1. 차량 (차량 열거형)
// 2. 비밀의 방
// 3. ...
enum MarkerType { vehicle, secretRoom }

// 마커 Class
class Marker {
  final double x;
  final double y;
  final MarkerType type;

  const Marker({required this.x, required this.y, required this.type});
}

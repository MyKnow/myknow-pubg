// lib/models/map_model.dart
// Created by MyKnow on August 12, 2025
// : PUBG Game의 Map을 보여주는 View의 Model을 정의합니다.

import 'package:myknow/models/asset_model.dart';

// Map 이름 Enum
enum MapName {
  erangel,
  vikendi,
  deston,
  haven,
  karakin,
  miramar,
  paramo,
  rondo,
  sanhok,
  taego,
  trainingMain,
}

// Map 이름 Enum
//
// # [Elements]
// - displayName -> String: Map의 원문 이름
// - codeName -> String: Map의 코드 이름
extension MapNameExtension on MapName {
  String get displayName {
    switch (this) {
      case MapName.erangel:
        return 'Erangel';
      case MapName.vikendi:
        return 'Vikendi';
      case MapName.deston:
        return 'Deston';
      case MapName.haven:
        return 'Haven';
      case MapName.karakin:
        return 'Karakin';
      case MapName.miramar:
        return 'Miramar';
      case MapName.paramo:
        return 'Paramo';
      case MapName.rondo:
        return 'Rondo';
      case MapName.sanhok:
        return 'Sanhok';
      case MapName.taego:
        return 'Taego';
      case MapName.trainingMain:
        return 'Training Main';
    }
  }

  String get codeName {
    switch (this) {
      case MapName.erangel:
        return 'Erangel_Main';
      case MapName.vikendi:
        return 'DihorOtok_Main';
      case MapName.deston:
        return 'Kiki_Main';
      case MapName.haven:
        return 'Heaven_Main';
      case MapName.karakin:
        return 'Summerland_Main';
      case MapName.miramar:
        return 'Desert_Main';
      case MapName.paramo:
        return 'Chimera_Main';
      case MapName.rondo:
        return 'Neon_Main';
      case MapName.sanhok:
        return 'Savage_Main';
      case MapName.taego:
        return 'Tiger_Main';
      case MapName.trainingMain:
        return 'Training_Main';
    }
  }

  MapName fromName(String name) {
    switch (name) {
      case 'Erangel':
        return MapName.erangel;
      case 'Vikendi':
        return MapName.vikendi;
      case 'Deston':
        return MapName.deston;
      case 'Haven':
        return MapName.haven;
      case 'Karakin':
        return MapName.karakin;
      case 'Miramar':
        return MapName.miramar;
      case 'Paramo':
        return MapName.paramo;
      case 'Rondo':
        return MapName.rondo;
      case 'Sanhok':
        return MapName.sanhok;
      case 'Taego':
        return MapName.taego;
      case 'Training Main':
        return MapName.trainingMain;
      default:
        throw ArgumentError('Invalid map name: $name');
    }
  }
}

// GameMap Class
// [Parameters]
// - id: 고유 ID
// - name: 원문 이름
// - textVersionAssetPath: Text 버전 이미지 경로 (nullable)
// - noTextVersionAssetPath: No Text 버전 이미지 경로
// - sideLengthKm: 한 변 길이 (km)
// - zoomSwitchThreshold: 줌 스위치 임계값
// - markers: 마커 위치 List
//
// [Methods]
// - fromId: Map ID로 Map을 반환하는 함수
// - fromName: Map 이름으로 Map을 반환하는 함수
// - hasTextVersion: Text 버전 이미지가 있는지 확인
//
class GameMap {
  final int id;
  final String name;
  final String? textVersionAssetPath;
  final String noTextVersionAssetPath;
  final double sideLengthKm;
  final double zoomSwitchThreshold;
  final List<Marker> markers;

  const GameMap({
    required this.id,
    required this.name,
    required this.textVersionAssetPath,
    required this.noTextVersionAssetPath,
    required this.sideLengthKm,
    required this.zoomSwitchThreshold,
    required this.markers,
  });

  // Text 버전 이미지가 있는지 확인
  bool get hasTextVersion => textVersionAssetPath != null;

  // Map ID로 Map을 반환하는 함수
  static GameMap fromId(int id) {
    final mapList = MapList();
    if (id < 0 || id >= mapList.maps.length) {
      throw ArgumentError('Invalid map id: $id');
    }
    return mapList.maps[id];
  }

  // 이름으로 Map을 찾는 함수
  static GameMap? fromName(String name) {
    final mapList = MapList();
    try {
      return mapList.maps.firstWhere((map) => map.name == name);
    } catch (e) {
      return null;
    }
  }

  // 열거형으로 Map을 찾는 함수
  static GameMap fromEnum(MapName name) {
    final mapList = MapList();
    return mapList.maps.firstWhere((map) => map.name == name.name);
  }

  @override
  String toString() => 'GameMap(id: $id, name: $name, size: ${sideLengthKm}km)';
}

// 맵 정보를 담는 데이터 클래스
class MapInfo {
  final String name;
  final double sideLengthKm;
  final bool hasTextVersion;

  const MapInfo({
    required this.name,
    required this.sideLengthKm,
    this.hasTextVersion = true,
  });
}

class MapList {
  // 맵 정보 상수 (한 곳에서 관리)
  static final List<MapInfo> _mapInfos = [
    MapInfo(name: MapName.erangel.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.vikendi.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.deston.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.haven.displayName, sideLengthKm: 1.0),
    MapInfo(name: MapName.karakin.displayName, sideLengthKm: 2.0),
    MapInfo(name: MapName.miramar.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.paramo.displayName, sideLengthKm: 3.0),
    MapInfo(name: MapName.rondo.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.sanhok.displayName, sideLengthKm: 4.0),
    MapInfo(name: MapName.taego.displayName, sideLengthKm: 8.0),
    MapInfo(name: MapName.trainingMain.displayName, sideLengthKm: 2.0),
    // 추후 추가할 맵들
    // MapInfo(name: 'Boardwalk', sideLengthKm: 2.0, hasTextVersion: false),
    // MapInfo(name: 'Camp_Jackal', sideLengthKm: 1.0, hasTextVersion: false),
    // MapInfo(name: 'Italy_Bomb', sideLengthKm: 1.0, hasTextVersion: false),
  ];

  // Singleton 패턴
  static final MapList _instance = MapList._internal();
  factory MapList() => _instance;
  MapList._internal() {
    _initializeMaps();
  }

  final List<GameMap> maps = [];

  void _initializeMaps() {
    if (maps.isNotEmpty) return; // 이미 초기화됨

    for (int i = 0; i < _mapInfos.length; i++) {
      final mapInfo = _mapInfos[i];

      maps.add(
        GameMap(
          id: i,
          name: mapInfo.name,
          textVersionAssetPath: mapInfo.hasTextVersion
              ? '${Asset.image.path}/maps/${mapInfo.name}_Main_High_Res.webp'
              : null,
          noTextVersionAssetPath:
              '${Asset.image.path}/maps/${mapInfo.name}_Main_No_Text_High_Res.webp',
          markers: [], // TODO: 실제 마커 데이터로 교체
          sideLengthKm: mapInfo.sideLengthKm,
          zoomSwitchThreshold: _calculateDefaultZoomThreshold(
            mapInfo.sideLengthKm,
          ),
        ),
      );
    }
  }

  // 맵 크기에 따른 기본 줌 임계값 계산
  double _calculateDefaultZoomThreshold(double mapSize) {
    if (mapSize <= 2.0) return 4.0; // 작은 맵: 더 작은 임계값
    if (mapSize <= 4.0) return 6.0;
    return 8.0; // 큰 맵: 큰 임계 값
  }

  // 모든 맵 이름 반환
  List<String> get mapNames => maps.map((map) => map.name).toList();

  // 특정 크기의 맵들 반환
  List<GameMap> getMapsBySize(double sizeKm) =>
      maps.where((map) => map.sideLengthKm == sizeKm).toList();
}

// 마커 종류 열거형
enum MarkerType {
  vehicle('vehicle', '차량'),
  secretRoom('secret_room', '비밀의 방'),
  lootSpawn('loot_spawn', '아이템 스폰'),
  landmark('landmark', '랜드마크');

  const MarkerType(this.id, this.displayName);

  final String id;
  final String displayName;
}

// 마커 Class
class Marker {
  final double x; // 0.0 ~ 1.0 (맵 이미지 내 상대 좌표)
  final double y; // 0.0 ~ 1.0 (맵 이미지 내 상대 좌표)
  final MarkerType type;
  final String? label; // 선택적 라벨
  final Map<String, dynamic>? metadata; // 추가 데이터

  const Marker({
    required this.x,
    required this.y,
    required this.type,
    this.label,
    this.metadata,
  });

  // 실제 맵 좌표로 변환 (km)
  double getMapX(double mapSizeKm) => x * mapSizeKm;
  double getMapY(double mapSizeKm) => y * mapSizeKm;

  @override
  String toString() => 'Marker(${type.displayName} at ($x, $y))';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Marker &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          type == other.type;

  @override
  int get hashCode => Object.hash(x, y, type);
}

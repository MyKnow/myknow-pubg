// lib/providers/map/map_providers.dart
// Created by MyKnow on August 12, 2025
// : Map Provider를 정의합니다.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/map/map_model.dart';

final gameMapProvider = StateNotifierProvider<GameMapProvider, GameMap>(
  (ref) => GameMapProvider(),
);

// GameMap Provider
// : Map View에서 사용되는 GameMap State를 관리하는 StateNotifierProvider
class GameMapProvider extends StateNotifier<GameMap> {
  GameMapProvider() : super(GameMap.fromId(0));

  void setMap(int id) {
    state = GameMap.fromId(id);
  }
}

// Extension
// : GameMap Provider를 위한 Extension
extension GameMapProviderExtension on GameMapProvider {
  //
}

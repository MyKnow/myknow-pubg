// lib/providers/navigation_provider.dart
// Created by MyKnow on August 12, 2025
// : Bottom Navigation Index Provider를 정의합니다.

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/pages/map/map_view.dart';

// bottom navigation index provider
// 0: home
// 1: weapon
// 2: map distance
// 3: bag capacity
//
// State
// - bottom navigation index
// Action: setIndex
//
final bottomNavIndexProvider =
    StateNotifierProvider<BottomNavIndexProvider, int>(
      (ref) => BottomNavIndexProvider(),
    );

class BottomNavIndexProvider extends StateNotifier<int> {
  BottomNavIndexProvider() : super(0);

  void setIndex(int index) {
    state = index;
  }

  Widget getWidget() {
    switch (state) {
      case 0:
        return const Center(child: Text('홈'));
      case 1:
        return const Center(child: Text('무기'));
      case 2:
        return const MapView();
      case 3:
        return const Center(child: Text('가방 용량'));
      default:
        return const SizedBox.shrink();
    }
  }
}

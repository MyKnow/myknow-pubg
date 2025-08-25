// lib/pages/map/map_view.dart
// Created by MyKnow on August 12, 2025
// : PUBG의 Map과 여러 기능을 제공하는 View를 정의합니다.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/pages/map/map_container.dart';
import 'package:myknow/pages/map/map_select_button.dart';
import 'package:myknow/providers/map/interactive_view_provider.dart';
import 'package:myknow/providers/map/map_providers.dart';

// TODO:
// 1. 각 맵 당 특수 장소(비밀의 방, 벙커), 탈 것 위치의 마커 Model을 생성하고 View를 구현한다.
// 2. 박격포를 위한 거리 계산 기능을 구현한다.
//
class MapView extends ConsumerStatefulWidget {
  const MapView({super.key});

  @override
  ConsumerState<MapView> createState() => _MapViewState();
}

class _MapViewState extends ConsumerState<MapView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(interactiveViewerScaleProvider.notifier).resetScale();
    });
  }

  @override
  Widget build(BuildContext context) {
    final map = ref.watch(gameMapProvider);

    return Scaffold(
      appBar: AppBar(title: MapSelectButton(map: map)),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: MapContainer(map: map),
      ),
    );
  }
}

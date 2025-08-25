// lib/pages/map/map_container.dart
// Created by MyKnow on August 12, 2025
// : 확대되는 Map을 보여주는 Container를 정의합니다.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/map/map_model.dart';
import 'package:myknow/pages/map/map_grid.dart';
import 'package:myknow/providers/map/interactive_view_provider.dart';

// # Map Container
// : InteractiveViewer를 사용하여 Map을 보여주는 Container
//
// # 의도
// : Map을 확대할 때 Text 버전과 No Text 버전 간 전환에 끊김 현상을 없애기 위해
//   Stack을 사용하여 두 버전의 이미지를 동시에 띄우고 있다가,
//   scale에 따라 투명도를 조정하여 자연스럽게 전환되도록 합니다.
//
class MapContainer extends ConsumerStatefulWidget {
  const MapContainer({super.key, required this.map});

  final GameMap map;

  @override
  ConsumerState<MapContainer> createState() => _MapContainerState();
}

class _MapContainerState extends ConsumerState<MapContainer> {
  @override
  Widget build(BuildContext context) {
    final map = widget.map;

    final scale = ref.watch(interactiveViewerScaleProvider);

    return InteractiveViewer(
      minScale: scale.minScale,
      maxScale: scale.maxScale,
      onInteractionUpdate: ref
          .read(interactiveViewerScaleProvider.notifier)
          .onInteractionUpdate,
      onInteractionStart: ref
          .read(interactiveViewerScaleProvider.notifier)
          .onInteractionStart,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // No Text 버전
          opacityWidget(
            assetPath: map.noTextVersionAssetPath,
            opacity: scale.scale >= map.zoomSwitchThreshold ? 1.0 : 0.0,
            map: map,
          ),
          // Text 버전
          opacityWidget(
            assetPath: map.textVersionAssetPath as String,
            opacity: scale.scale < map.zoomSwitchThreshold ? 1.0 : 0.0,
            map: map,
          ),
        ],
      ),
    );
  }

  Widget opacityWidget({
    required String assetPath,
    required double opacity,
    required GameMap map,
  }) {
    return Opacity(
      opacity: opacity,
      child: Stack(
        children: [
          Image.asset(assetPath),
          Positioned.fill(child: MapGridOverlay(map: map)),
        ],
      ),
    );
  }
}

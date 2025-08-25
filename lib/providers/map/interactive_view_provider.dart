// lib/providers/map/interactive_view_provider.dart
// Created by MyKnow on August 12, 2025
// : Interactive View Provider를 정의합니다.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/map/interactive_view_model.dart';

final interactiveViewerScaleProvider =
    StateNotifierProvider<InteractiveViewNotifier, InteractiveViewState>(
      (ref) => InteractiveViewNotifier(),
    );

// # Interactive View Notifier
// : Interactive View의 State를 관리하는 StateNotifier
//
// # 의미
// : InteractiveViewer의 onInteractionUpdate의 ScaleUpdateDetails.scale은
//   현재 확대 비율을 나타내는 것이 아니라, 제스쳐 시작 시점으로부터 확대/축소된 정도를
//   나타내는 것이기 때문에, 별도로 제스쳐 시작 시점의 scale을 저장하여 현재의 이미지 확대
//   비율을 계산할 수 있도록 합니다.
//
class InteractiveViewNotifier extends StateNotifier<InteractiveViewState> {
  InteractiveViewNotifier()
    : super(InteractiveViewState(scale: 1.0, baseScale: 1.0));

  void startInteraction() {
    // 제스쳐 시작 시점의 scale을 저장하여 현재의 이미지 확대 비율을 계산할 수 있도록 합니다.
    state = state.copyWith(baseScale: state.scale);
  }

  void updateScale(double gestureScale) {
    // 제스쳐 시작 시점의 scale과 현재 제스쳐의 scale을 곱하여 이미지의 현재 확대 비율을 계산합니다.
    final newScale = (state.baseScale * gestureScale).clamp(1.0, 50.0);
    state = state.copyWith(scale: newScale);
  }

  void resetScale() {
    // scale과 baseScale을 초기화하여 InteractiveViewer의 scale을 초기화합니다.
    state = state.copyWith(scale: 1.0, baseScale: 1.0);
  }
}

// Extension
// : InteractiveViewNotifier가 사용되는 View에서 각 Action을 위한 함수를 정의한 extension
//
extension InteractiveViewNotifierExtension on InteractiveViewNotifier {
  // 사용자가 핀치 제스쳐를 사용하여 InteractiveViewer의 scale을 변경할 때 호출됩니다.
  void Function(ScaleUpdateDetails)? get onInteractionUpdate => (details) {
    if (details.pointerCount == 2) {
      updateScale(details.scale);
    }
  };

  // 사용자가 핀치 제스쳐를 시작할 때 호출됩니다.
  void Function(ScaleStartDetails)? get onInteractionStart => (details) {
    startInteraction();
  };
}

// lib/models/map/interactive_view_model.dart
// Created by MyKnow on August 12, 2025
// : Interactive View Model을 정의합니다.

// # Interactive View State
// : Interactive View의 State를 관리하는 Model
//
// # Parameters
// - scale -> double: 현재 확대 비율
// - baseScale -> double: 제스쳐 시작 시점 기준 확대 비율
//
class InteractiveViewState {
  final double scale;
  final double baseScale;

  final double maxScale = 50.0;
  final double minScale = 1.0;

  InteractiveViewState({required this.scale, required this.baseScale});

  InteractiveViewState copyWith({double? scale, double? baseScale}) {
    return InteractiveViewState(
      scale: scale ?? this.scale,
      baseScale: baseScale ?? this.baseScale,
    );
  }
}

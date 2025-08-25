// 맵 격자를 그리는 CustomPaint 위젯
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/map/map_model.dart';
import 'package:myknow/providers/map/interactive_view_provider.dart';

class MapGridOverlay extends ConsumerStatefulWidget {
  const MapGridOverlay({super.key, required this.map});

  final GameMap map;

  @override
  ConsumerState<MapGridOverlay> createState() {
    return _MapGridOverlayState();
  }
}

class _MapGridOverlayState extends ConsumerState<MapGridOverlay> {
  @override
  Widget build(BuildContext context) {
    final scale = ref.watch(interactiveViewerScaleProvider).scale;
    final mapSizeKm = widget.map.sideLengthKm;
    final gridColor = Colors.black;
    final gridWidth = 0.5;

    // 일정 배율 이상일 땐 격자를 표시하지 않음
    if (scale > widget.map.zoomSwitchThreshold) {
      return SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: MapGridPainter(
          mapSizeKm: mapSizeKm,
          gridColor: gridColor,
          gridWidth: gridWidth,
          opacity: 1.0,
        ),
      ),
    );
  }
}

// 격자를 실제로 그리는 CustomPainter
class MapGridPainter extends CustomPainter {
  const MapGridPainter({
    required this.mapSizeKm,
    required this.gridColor,
    required this.gridWidth,
    required this.opacity,
  });

  final double mapSizeKm;
  final Color gridColor;
  final double gridWidth;
  final double opacity;

  @override
  void paint(Canvas canvas, Size size) {
    if (opacity <= 0) return;

    final paint = Paint()
      ..color = gridColor.withValues(alpha: opacity)
      ..strokeWidth = gridWidth
      ..style = PaintingStyle.stroke;

    // 세로선
    for (int i = 1; i < mapSizeKm; i++) {
      final x = (i / mapSizeKm) * size.width;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    // 가로선
    for (int j = 1; j < mapSizeKm; j++) {
      final y = (j / mapSizeKm) * size.height;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }
  }

  @override
  bool shouldRepaint(covariant MapGridPainter oldDelegate) {
    return oldDelegate.mapSizeKm != mapSizeKm ||
        oldDelegate.gridColor != gridColor ||
        oldDelegate.gridWidth != gridWidth ||
        oldDelegate.opacity != opacity;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/map/map_model.dart';
import 'package:myknow/providers/map/map_providers.dart';

class MapSelectButton extends ConsumerStatefulWidget {
  const MapSelectButton({super.key, required this.map});

  final GameMap map;

  @override
  ConsumerState<MapSelectButton> createState() => _MapSelectButtonState();
}

class _MapSelectButtonState extends ConsumerState<MapSelectButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: const SizedBox.shrink(),
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      value: widget.map.id,
      items: MapList().maps
          .map((map) => DropdownMenuItem(value: map.id, child: Text(map.name)))
          .toList(),
      onChanged: (value) {
        if (value == null) return;
        ref.read(gameMapProvider.notifier).setMap(value);
      },
    );
  }
}

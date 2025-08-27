// lib/pages/weapon/weapon_view.dart
// Created by MyKnow on August 12, 2025
// : PUBG의 Weapon을 보여주는 View를 정의합니다.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/item/rifle/rifle_list.dart';

// # WeaponView
// : Weapon을 보여주는 View
// # TODO: 정렬 방식을 변경하는 UI 추가
class WeaponView extends ConsumerStatefulWidget {
  const WeaponView({super.key});

  @override
  ConsumerState<WeaponView> createState() => _WeaponViewState();
}

class _WeaponViewState extends ConsumerState<WeaponView> {
  @override
  Widget build(BuildContext context) {
    final sortedRifleList = RifleList.rifles.map((rifle) => rifle).toList()
      ..sort((a, b) => b.dps.compareTo(a.dps));
    return Scaffold(
      appBar: AppBar(title: const Text('Weapon')),
      body: ListView.builder(
        itemCount: sortedRifleList.length,
        itemBuilder: (context, index) {
          final rifle = sortedRifleList[index];
          return ListTile(
            title: Text(rifle.displayName),
            leading: Image.asset(rifle.assetPath),
            trailing: Text("${rifle.dps.toStringAsFixed(1)} DPS"),
          );
        },
      ),
    );
  }
}

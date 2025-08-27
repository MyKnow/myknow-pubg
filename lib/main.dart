import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myknow/models/asset_model.dart';
import 'package:myknow/pages/home.dart';

void main() async {
  // Flutter 엔진과 위젯 프레임워크를 먼저 초기화
  WidgetsFlutterBinding.ensureInitialized();

  // AssetCache 초기화
  await AssetCache.preload();

  // 아래에서 MethodChannel을 사용하는 Framework 초기화

  runApp(ProviderScope(child: MyKnow()));
}

class MyKnow extends ConsumerWidget {
  const MyKnow({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

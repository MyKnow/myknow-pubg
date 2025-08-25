// lib/models/vehicle_model.dart
// Created by MyKnow on August 12, 2025
// : PUBG의 차량을 보여주는 View의 Model을 정의합니다.

// 전체 이동수단 종류
// 1. 모터사이클
// 2. 더트 바이크
// 3. 스쿠터
// 4. 툭샤이
// 5. ATV 쿼드
// 6. 산악 자전거
// 7. 스노우모빌
// 8. 다시아
// 9. 미라도
// 10. 포니 쿠페
// 11. 필라 시큐리티 출동차
// 12. 쿠페 RB
// 13. 미니버스
// 14. 로니
// 15. 피코 버스
// 16. UAZ
// 17. 필라 UAZ
// 18. 픽업트럭
// 19. 지마
// 20. 블랑
// 21. 포터
// 22. 푸드 트럭
// 23. 버기
// 24. BRDM-2
// 25. 모터글라이더
// 26. 보트
// 27. 아쿠아레일
// 28. 에어 보트
// 29. 고무 보트

// Vehicle Class
import 'package:myknow/models/asset_model.dart';

class Vehicle {
  final String name;
  String get imagePath => '${Asset.image.path}/vehicles/$name.webp';
  final int durability;
  final int peopleCapacity;
  final int cargoCapacity;
  final double maxSpeed;
  final PowerType powerType;
  final VehicleType type;

  Vehicle({
    required this.name,
    required this.maxSpeed,
    required this.durability,
    required this.peopleCapacity,
    required this.cargoCapacity,
    required this.powerType,
    required this.type,
  });
}

// 차량 종류 열거형
// 1. 2륜차량
// 2. 3륜차량
// 3. 4륜차량
// 4. 해상
// 5. 공중
enum VehicleType { twoWheel, threeWheel, fourWheel, sea, air }

// 동력구동 종류 열거형
// 1. FF: 전륜
// 2. FR: 후륜
// 3. AWD: 사륜
enum PowerType { front, rear, awd, etc }

// 차량 List
final vehicleList = [
  Vehicle(
    name: 'Motorcycle',
    maxSpeed: 140,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.twoWheel,
  ),

  Vehicle(
    name: 'DirtBike',
    maxSpeed: 130,
    durability: 1000,
    peopleCapacity: 1,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.twoWheel,
  ),

  Vehicle(
    name: 'Scooter',
    maxSpeed: 130,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.twoWheel,
  ),

  Vehicle(
    name: 'TukShai',
    maxSpeed: 85,
    durability: 1000,
    peopleCapacity: 3,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.threeWheel,
  ),

  Vehicle(
    name: 'ATV',
    maxSpeed: 130,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'MountainBike',
    maxSpeed: 62,
    durability: 0,
    peopleCapacity: 1,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.twoWheel,
  ),

  Vehicle(
    name: 'Snowmobile',
    maxSpeed: 105,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Dacia',
    maxSpeed: 110,
    durability: 1800,
    peopleCapacity: 4,
    cargoCapacity: 150,
    powerType: PowerType.front,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Mirado',
    maxSpeed: 160,
    durability: 900,
    peopleCapacity: 4,
    cargoCapacity: 150,
    powerType: PowerType.rear,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'PonyCoupe',
    maxSpeed: 150,
    durability: 1000,
    peopleCapacity: 4,
    cargoCapacity: 100,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'FilaSecurity',
    maxSpeed: 135,
    durability: 900,
    peopleCapacity: 4,
    cargoCapacity: 150,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'CoupeRB',
    maxSpeed: 155,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 100,
    powerType: PowerType.rear,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'MiniBus',
    maxSpeed: 110,
    durability: 4000,
    peopleCapacity: 6,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Rony',
    maxSpeed: 120,
    durability: 1000,
    peopleCapacity: 4,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'PicoBus',
    maxSpeed: 110,
    durability: 1800,
    peopleCapacity: 6,
    cargoCapacity: 0,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'UAZ',
    maxSpeed: 120,
    durability: 2000,
    peopleCapacity: 4,
    cargoCapacity: 250,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'FilaUAZ',
    maxSpeed: 110,
    durability: 4000,
    peopleCapacity: 4,
    cargoCapacity: 250,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'PickupTruck',
    maxSpeed: 120,
    durability: 1000,
    peopleCapacity: 4,
    cargoCapacity: 250,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Zima',
    maxSpeed: 120,
    durability: 1200,
    peopleCapacity: 4,
    cargoCapacity: 250,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Blanc',
    maxSpeed: 120,
    durability: 1200,
    peopleCapacity: 4,
    cargoCapacity: 250,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Porter',
    maxSpeed: 110,
    durability: 1500,
    peopleCapacity: 4,
    cargoCapacity: 400,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'FoodTruck',
    maxSpeed: 120,
    durability: 2500,
    peopleCapacity: 4,
    cargoCapacity: 0,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Buggy',
    maxSpeed: 120,
    durability: 1500,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.rear,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'BRDM-2',
    maxSpeed: 90,
    durability: 2500,
    peopleCapacity: 4,
    cargoCapacity: 0,
    powerType: PowerType.awd,
    type: VehicleType.fourWheel,
  ),

  Vehicle(
    name: 'Motorglider',
    maxSpeed: 110,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.etc,
    type: VehicleType.air,
  ),

  Vehicle(
    name: 'Boat',
    maxSpeed: 90,
    durability: 1500,
    peopleCapacity: 5,
    cargoCapacity: 0,
    powerType: PowerType.etc,
    type: VehicleType.sea,
  ),

  Vehicle(
    name: 'Aquarail',
    maxSpeed: 90,
    durability: 1000,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.etc,
    type: VehicleType.sea,
  ),

  Vehicle(
    name: 'Airboat',
    maxSpeed: 125,
    durability: 1200,
    peopleCapacity: 2,
    cargoCapacity: 0,
    powerType: PowerType.etc,
    type: VehicleType.sea,
  ),

  Vehicle(
    name: 'RubberBoat',
    maxSpeed: 50,
    durability: 500,
    peopleCapacity: 4,
    cargoCapacity: 0,
    powerType: PowerType.etc,
    type: VehicleType.sea,
  ),
];

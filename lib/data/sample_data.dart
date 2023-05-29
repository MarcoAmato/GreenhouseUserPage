import 'package:greenhouse_user_page/data/plant.dart';

DateTime now = DateTime.now();

// 5 sample data points for light level. Starts from now with light level 100 and decreases by 20 over the last 4 days.
final List lightData = [
  [now, 100.0],
  [now.subtract(const Duration(days: 1)), 80.0],
  [now.subtract(const Duration(days: 2)), 60.0],
  [now.subtract(const Duration(days: 3)), 40.0],
  [now.subtract(const Duration(days: 4)), 20.0],
];

// 5 sample data points for temperature. Starts from now with temperature 20 and increases by 1 over the last 4 days.
final List temperatureData = [
  [now, 20.0],
  [now.subtract(const Duration(days: 1)), 21.0],
  [now.subtract(const Duration(days: 2)), 22.0],
  [now.subtract(const Duration(days: 3)), 23.0],
  [now.subtract(const Duration(days: 4)), 24.0],
];

// 5 sample data points for humidity. Starts from now with humidity 50 and decreases by 1 over the last 4 days.
final List humidityData = [
  [now, 50.0],
  [now.subtract(const Duration(days: 1)), 49.0],
  [now.subtract(const Duration(days: 2)), 48.0],
  [now.subtract(const Duration(days: 3)), 47.0],
  [now.subtract(const Duration(days: 4)), 46.0],
];

const double lightLevel = 90.0;

const double temperature = 25.0;

final List plants = [
  Plant(
    name: 'Plant 1',
    image: 'assets/images/plant1.jpg',
    description: 'This is a description of Plant 1.',
    lastWatered: now.subtract(const Duration(days: 1)),
  ),
  Plant(
    name: 'Plant 2',
    image: 'assets/images/plant2.jpg',
    description: 'This is a description of Plant 2.',
    lastWatered: now.subtract(const Duration(days: 2)),
  ),
];
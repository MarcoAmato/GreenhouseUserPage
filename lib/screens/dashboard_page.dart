import 'package:flutter/material.dart';
import 'package:greenhouse_user_page/widgets/plant_preview.dart';


import '../data/sample_data.dart' as sample_data;

class DashboardPage extends StatelessWidget {
  /// The home page of the app.
  /// Displays the current light level and temperature, and a list of plants
  /// in the greenhouse.
  /// Each plant preview is a card with the plant's name, image, and a button
  /// to view more details about the plant.
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greenhouse Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Light Level: ${sample_data.lightLevel}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Temperature: ${sample_data.temperature}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24.0),
            const Text(
              'Plants',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: sample_data.plants.length,
                itemBuilder: (context, index) {
                  final plant = sample_data.plants[index];
                  return PlantPreview(plant: plant);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Greenhouse Dashboard'),
    //   ),
    //   body: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         const Text(
    //           'Light Level',
    //           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //         ),
    //         const SizedBox(height: 8.0),
    //         SizedBox(
    //           height: 200,
    //           child: charts.TimeSeriesChart(
    //             [
    //               charts.Series<List, DateTime>(
    //                 id: 'Light Level',
    //                 colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    //                 domainFn: (data, _) => data[0],
    //                 measureFn: (data, _) => data[1],
    //                 data: lightData,
    //               ),
    //             ],
    //             animate: true,
    //             dateTimeFactory: const charts.LocalDateTimeFactory(),
    //           ),
    //         // const SizedBox(height: 24.0),
    //         // const Text(
    //         //   'Temperature',
    //         //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //         // ),
    //         // const SizedBox(height: 8.0),
    //         // Text(
    //         //   '$temperature °C',
    //         //   style: const TextStyle(fontSize: 18),
    //         // ),
    //         // const SizedBox(height: 24.0),
    //         // const Text(
    //         //   'Humidity',
    //         //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //         // ),
    //         // const SizedBox(height: 8.0),
    //         // Text(
    //         //   '$humidity %',
    //         //   style: const TextStyle(fontSize: 18),
    //         // ),
    //       ],
    //     ),
    //   ),

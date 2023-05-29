import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart' as charts;


import 'data/plant.dart';
import 'data/sample_data.dart' as sample_data;

class DashboardPanel extends StatelessWidget {
  /// The home page of the app.
  /// Displays the current light level and temperature, and a list of plants
  /// in the greenhouse.
  /// Each plant preview is a card with the plant's name, image, and a button
  /// to view more details about the plant.
  const DashboardPanel({super.key});

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
                  return Card(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PlantDetails(plant: plant),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Image.asset(
                              plant.image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    plant.name,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    plant.description,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlantDetails extends StatelessWidget {
  /// Displays details about a plant.
  /// Displays the plant's name, image, description, and a button to return to
  /// the dashboard.
  const PlantDetails({Key? key, required this.plant}) : super(key: key);

  /// The plant to display details about.
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            plant.image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plant.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  plant.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'Last Watered: ${plant.lastWatered.toString()}',
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
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

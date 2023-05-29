import 'package:flutter/material.dart';

import '../data/plant.dart';

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
      child: InkWell(
        onTap: () {
          // Handle plant details tap
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
              Image.asset(
                plant.image,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8.0),
              Text(
                plant.description,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Last Watered: ${plant.lastWatered.toString()}',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

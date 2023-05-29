class Plant {
  /// A plant in the greenhouse.
  const Plant({
    required this.name,
    required this.image,
    required this.description,
    required this.lastWatered
  });

  /// The name of the plant.
  final String name;

  /// The image of the plant.
  final String image;

  /// A description of the plant.
  final String description;

  /// The date the plant was last watered.
  final DateTime lastWatered;
}
class MissionModel {
  MissionModel({
    required this.title,
    required this.description,
    required this.points,
    this.isCompleted = false,
  });

  final String title;
  final String description;
  bool isCompleted;
  final int points;
}

class MissionModel {
  MissionModel({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });

  final String title;
  final String description;
  bool isCompleted;
}

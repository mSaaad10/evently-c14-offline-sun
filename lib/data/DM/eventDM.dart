class EventDM {
  final String title;
  final String description;
  final String category;
  final String imagePath;
  final DateTime dateTime;
  final DateTime time;
  final int? lat;
  final int? lng;

  EventDM(
      {required this.title,
      required this.description,
      required this.category,
      required this.imagePath,
      required this.dateTime,
      required this.time,
      this.lat,
      this.lng});
}

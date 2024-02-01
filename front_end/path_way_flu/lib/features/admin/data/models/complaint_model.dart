class Complaint {
  final String? id;
  final String title;
  final String description;

  Complaint({
    required this.title,
    required this.description,
    this.id,
  });
}

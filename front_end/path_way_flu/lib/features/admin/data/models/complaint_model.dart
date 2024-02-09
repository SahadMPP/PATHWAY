class Complaint {
  final String? id;
  final String title;
  final String description;

  Complaint({
    required this.title,
    required this.description,
    this.id,
  });

  factory Complaint.fromJson(Map<String, dynamic> json) {
    return Complaint(
        id: json["_id"],
        title: json["title"],
        description: json["description"]);
  }
}

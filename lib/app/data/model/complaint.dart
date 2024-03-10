class Complaint {
  final String? id;
  final String title;
  final String description;
  final String dataTime;

  Complaint({
    required this.dataTime,
    required this.title,
    required this.description,
    this.id,
  });

  factory Complaint.fromJson(Map<String, dynamic> json) {
    return Complaint(
        id: json["_id"],
        title: json["title"],
        dataTime: json['dataTime'],
        description: json["description"]);
  }
}

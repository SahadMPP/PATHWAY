class Tutorial {
  final String? id;

  final String title;
  final String level;
  final String videoUrl;
  final int duration;
  final String discription;

  Tutorial({
    this.id,
    required this.title,
    required this.level,
    required this.videoUrl,
    required this.duration,
    required this.discription,
  });

  factory Tutorial.fromJson(Map<String, dynamic> json) {
    return Tutorial(
        id: json["_id"],
        title: json["title"],
        level: json["level"],
        videoUrl: json["videoUrl"],
        duration: json["duration"],
        discription: json["discription"]);
  }
}

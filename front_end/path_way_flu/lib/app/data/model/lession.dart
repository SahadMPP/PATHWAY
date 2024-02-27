class Lession {
  String creatorName;
  String subject;
  String profileImage;
  int countOfLesson;
  int watchTime;
  String title;
  List<String> lessonId;

  Lession({
    required this.creatorName,
    required this.subject,
    required this.title,
    this.profileImage = '',
    this.countOfLesson = 0,
    this.watchTime = 0,
    this.lessonId = const [],
  });

  factory Lession.fromJson(Map<String, dynamic> json) {
    return Lession(
      creatorName: json['creatorName'],
      subject: json['subject'],
      profileImage: json['profileImage'] ?? '',
      countOfLesson: json['countOfLesson'] ?? 0,
      watchTime: json['watchTime'] ?? 0,
      title: json['title'],
      lessonId: json['lessonId'] != null
          ? List<String>.from(json['lessonId'])
          : [],
    );
  }
}

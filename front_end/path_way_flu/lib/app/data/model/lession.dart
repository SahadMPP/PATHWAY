class Lession {
  String id;
  String creatorName;
  String subject;
  String profileImage;
  int countOfLesson;
  int watchTime;
  String title;
  String coverImage;
  List<String> lessonId;

  Lession({
    required this.id,
    required this.creatorName,
    required this.subject,
    required this.title,
    required this.coverImage,
    this.profileImage = '',
    this.countOfLesson = 0,
    this.watchTime = 0,
    this.lessonId = const [],
  });

factory Lession.fromJson(Map<String, dynamic> json) {
  return Lession(
    id: json['_id'] ?? '',
    creatorName: json['creatorName'] ?? '',
    subject: json['subject'] ?? '',
    coverImage: json['coverImage'] ?? '',
    profileImage: json['profileImage'] ?? '',
    countOfLesson: json['countOfLesson'] ?? 0,
    watchTime: json['watchTime'] ?? 0,
    title: json['title'] ?? '',
    lessonId: json['lessonId'] != null
        ? List<String>.from(json['lessonId'])
        : [],
  );
}
}

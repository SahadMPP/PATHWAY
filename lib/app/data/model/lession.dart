class Lesson {
  String id;
  String creatorName;
  String subject;
  String profileImage;
  String coverImage;
  int countOfLesson;
  num price;
  String creatorId; // Changed to String
  int watchTime;
  String title;
  List<String> lessonId;

  Lesson({
    required this.id,
    required this.creatorName,
    required this.subject,
    this.profileImage = "",
    this.coverImage = "",
    this.countOfLesson = 0,
    this.price = 0,
    required this.creatorId, // Changed to String
    this.watchTime = 0,
    required this.title,
    this.lessonId = const [],
  });

  factory Lesson.fromJson(Map<String, dynamic> json) => Lesson(
        id: json['_id'],
        creatorName: json['creatorName'],
        subject: json['subject'],
        profileImage: json['lessonProfileImage'] ?? "",
        coverImage: json['coverImage'] ?? "",
        countOfLesson: json['countOfLesson'] ?? 0,
        price: json['price'] ?? 0,
        creatorId: json['creatorId'],
        watchTime: json['watchTime'] ?? 0,
        title: json['title'],
        lessonId: List<String>.from(json['lessonId'] ?? []),
      );

  Map<String, dynamic> toJson() => {
        'creatorName': creatorName,
        'subject': subject,
        'lessonProfileImage': profileImage,
        'coverImage': coverImage,
        'countOfLesson': countOfLesson,
        'price': price,
        'creatorId': creatorId,
        'watchTime': watchTime,
        'title': title,
        'lessonId': lessonId,
      };
}

class Progress {
  String creatorName;
  String subject;
  String coverImage;
  String lessonId;
  int countOfLessonWatched;
  int totelCountOfLesson;
  String title;
  String studentId;

  Progress({
    required this.creatorName,
    required this.subject,
    required this.lessonId,
    this.coverImage = "",
    this.countOfLessonWatched = 0,
    this.totelCountOfLesson = 0,
    required this.title,
    required this.studentId,
  });

  factory Progress.fromJson(Map<String, dynamic> json) => Progress(
        creatorName: json['creatorName'],
        subject: json['subject'],
        coverImage: json['coverImage'] ?? "",
        countOfLessonWatched: json['countOfLessonWatched'] ?? 0,
        totelCountOfLesson: json['totelCountOfLesson'] ?? 0,
        title: json['title'],
        lessonId: json['lessonId'],
        studentId: json['studentId'],
      );
}
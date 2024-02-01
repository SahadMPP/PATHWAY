class Tutorial {
  final String? id;

  final String title;
  final String creator;
  final String category;
  final String tumbnailImage;
  final String videoUrl;
  final int duration;
  final String discription;

  Tutorial({
    this.id,
    required this.title,
    required this.creator,
    required this.category,
    required this.tumbnailImage,
    required this.videoUrl,
    required this.duration,
    required this.discription,
  });
}

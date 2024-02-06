import 'dart:typed_data';

import 'package:flutter/foundation.dart';

class Tutorial {
  final String? id;

  final String title;
  final String creator;
  final String level;
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
    required this.level,
    required this.tumbnailImage,
    required this.videoUrl,
    required this.duration,
    required this.discription,
  });

  factory Tutorial.fromJson(Map<String, dynamic> json) {
    return Tutorial(
        id: json["_id"],
        title: json["title"],
        creator: json["creator"],
        category: json["category"],
        level: json["level"],
        tumbnailImage: json["tumbnailImage"],
        videoUrl: json["videoUrl"],
        duration: json["duration"],
        discription: json["discription"]);
  }
}

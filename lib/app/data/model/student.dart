
class Student {
  final String id;
  final String name;
  final String age;
  final String email;
  final String password;
  final String mobNumber;
  final List<String>? lessonId;
  final bool active;
  final String level;
  final String? profileImage;
  final String? gender;
  

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
    required this.password,
    required this.mobNumber,
    this.lessonId,
    required this.active,
    required this.level,
    this.profileImage,
    this.gender,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      gender: json['gender'] ?? '',
      age: json['age'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      mobNumber: json['mobNumber'],
      lessonId: json['lessonId'] != null
          ? List<String>.from(json['lessonId'])
          : null,
      active: json['active'] ?? false,
      level: json['level'] ?? '',
      profileImage: json['profileImage'] ?? '',
    );
  }
}



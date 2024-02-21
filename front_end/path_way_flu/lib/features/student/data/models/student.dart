
class Student {
  final String id;
  final String name;
  final String age;
  final String email;
  final String password;
  final String? mobNumber;
  final List<String>? subjects;
  final bool active;
  final String level;
  final String? profileImage;

  Student({
    required this.id,
    required this.name,
    required this.age,
    required this.email,
    required this.password,
    this.mobNumber,
    this.subjects,
    required this.active,
    required this.level,
    this.profileImage,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      age: json['age'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      mobNumber: json['mobNumber'],
      subjects: json['subjects'] != null
          ? List<String>.from(json['subjects'])
          : null,
      active: json['active'] ?? false,
      level: json['level'] ?? '',
      profileImage: json['profileImage'] ?? '',
    );
  }
}

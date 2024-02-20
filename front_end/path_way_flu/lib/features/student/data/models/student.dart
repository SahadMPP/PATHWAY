class Student {
  final String? id;
  final String? name;
  final String? age;
  final String? email;
  final String? password;
  final Map<String, bool>? subjects;
  final bool? active;
  final String? level;
  final String? profileImage;
  final String? mobNumber;

  Student({
    this.id,
    this.mobNumber,
    this.profileImage,
    this.name,
    this.age,
    this.email,
    this.password,
    this.subjects,
    this.active,
    this.level,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'],
      profileImage: json['profileImage'],
      mobNumber: json['mobNumber'],
      name: json['name'],
      age: json['age'],
      email: json['email'],
      password: json['password'],
      subjects: json['subjects'] != null
          ? Map<String, bool>.from(json['subjects'])
          : null,
      active: json['active'],
      level: json['level'],
    );
  }
}

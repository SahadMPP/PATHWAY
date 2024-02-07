class Teacher {
  String name;
  String email;
  String password;
  String mobNumber;
  String universityName;
  String appledSubject;
  String appledStatus;
  String universityPlace;
  String universityState;
  String experience;
  String officerName;
  Map<String, String> certificates;
  String signatureImage;
  bool active;
  Map<String, bool> subjects;

  Teacher({
    required this.name,
    required this.email,
    required this.password,
    required this.mobNumber,
    required this.appledStatus,
    required this.appledSubject,
    required this.universityName,
    required this.universityPlace,
    required this.universityState,
    required this.experience,
    required this.officerName,
    required this.certificates,
    required this.signatureImage,
    required this.active,
    required this.subjects,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      mobNumber: json['mobNumber'],
      appledStatus: json['appledStatus'],
      appledSubject: json['appledSubject'],
      universityName: json['universityName'],
      universityPlace: json['universityPlace'],
      universityState: json['universityState'],
      experience: json['experience'],
      officerName: json['officerName'],
      certificates: Map<String, String>.from(json['certificates']),
      signatureImage: json['signatureImage'],
      active: json['active'],
      subjects: Map<String, bool>.from(json['subjects']),
    );
  }
}

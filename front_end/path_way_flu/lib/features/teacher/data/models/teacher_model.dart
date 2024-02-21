class Teacher {
  final String id;
  final String name;
  final String email;
  final String password;
  final String? mobNumber;
  final String? universityName;
  final String? universityPlace;
  final String? universityState;
  final String? experience;
  final String? officerName;
  final String? signatureImage;
  final bool active;
  final List<String>? subjects;
  final String? appledSubject;
  final String? profileImage;
  final String? appliedStatus;
  final String? certificatesOne; 
  final String? certificatesTwo;

  Teacher({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.certificatesOne,
    this.certificatesTwo,
    this.appliedStatus,
    this.mobNumber,
    this.universityName,
    this.universityPlace,
    this.universityState,
    this.experience,
    this.officerName,
    this.signatureImage,
    required this.active,
    this.subjects,
    this.appledSubject,
    this.profileImage,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
      mobNumber: json['mobNumber'],
      universityName: json['universityName'],
      universityPlace: json['universityPlace'],
      universityState: json['universityState'],
      experience: json['experience'],
      officerName: json['officerName'],
      certificatesOne: json['certificatesOne'],
      certificatesTwo: json['certificatesTwo'],
      signatureImage: json['signatureImage'],
      active: json['active'] ?? false,
      subjects:
          json['subjects'] != null ? List<String>.from(json['subjects']) : null,
      appledSubject: json['appledSubject'] ?? '',
      profileImage: json['profileImage'] ?? '',
      appliedStatus: json['appledStatus'] ?? '',
    );
  }
}

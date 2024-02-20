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
  final Map<String, String>? certificates;
  final String? signatureImage;
  final bool active;
  final Map<String, bool>? subjects;
  final String? appliedSubject;
  final String? profileImage;

  Teacher({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.mobNumber,
    this.universityName,
    this.universityPlace,
    this.universityState,
    this.experience,
    this.officerName,
    this.certificates,
    this.signatureImage,
    required this.active,
    this.subjects,
    this.appliedSubject,
    this.profileImage,
  });

  // factory Teacher.fromJson(Map<String, dynamic> json) {
  //   return Teacher(
  //     id: json['_id'],
  //     name: json['name'],
  //     email: json['email'],
  //     password: json['password'],
  //     mobNumber: json['mobNumber'],
  //     universityName: json['universityName'],
  //     universityPlace: json['universityPlace'],
  //     universityState: json['universityState'],
  //     experience: json['experience'],
  //     officerName: json['officerName'],
  //     certificates: Map<String, String>.from(json['certificates']),
  //     signatureImage: json['signatureImage'],
  //     active: json['active'],
  //     subjects: Map<String, bool>.from(json['subjects']),
  //     appliedSubject: json['appliedSubject'],
  //     profileImage:json['profileImage']
  //   );
  // }
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
    certificates: json['certificates'] != null
        ? Map<String, String>.from(json['certificates'])
        : null,
    signatureImage: json['signatureImage'],
    active: json['active'] ?? false,
    subjects: json['subjects'] != null
        ? Map<String, bool>.from(json['subjects'])
        : null,
    appliedSubject: json['appliedSubject'],
    profileImage: json['profileImage'],
  );
}
}

class Teacher {
  String? name;
  String? email;
  String? password;
  String? profileImage;
  String? mobNumber;
  String? universityName;
  String? appledSubject;
  bool? appledStatus;
  String? universityPlace;
  String? universityState;
  String? experience;
  String? officerName;
  String? signatureImage;
  bool? active;
  String? certificateOne;
  String? certificateTwo;
  bool? mathematics;
  bool? art;
  bool? science;
  bool? geography;
  bool? socialStudies;
  bool? history;
  bool? computer;

  Teacher({
    this.name,
    this.email,
    this.password,
    this.profileImage,
    this.mobNumber,
    this.universityName,
    this.appledSubject,
    this.appledStatus,
    this.universityPlace,
    this.universityState,
    this.experience,
    this.officerName,
    this.signatureImage,
    this.active,
    this.certificateOne,
    this.certificateTwo,
    this.mathematics,
    this.art,
    this.science,
    this.geography,
    this.socialStudies,
    this.history,
    this.computer,
  });

  factory Teacher.fromJson(Map<String, dynamic> json) {
    return Teacher(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      profileImage: json['profileImage'] as String?,
      mobNumber: json['mobNumber'] as String?,
      universityName: json['universityName'] as String?,
      appledSubject: json['appledSubject'] as String?,
      appledStatus: json['appledStatus'] as bool?,
      universityPlace: json['universityPlace'] as String?,
      universityState: json['universityState'] as String?,
      experience: json['experience'] as String?,
      officerName: json['officerName'] as String?,
      signatureImage: json['signatureImage'] as String?,
      active: json['active'] as bool?,
      certificateOne: json['certificateOne'] as String?,
      certificateTwo: json['certificateTwo'] as String?,
      mathematics: json['mathematics'] as bool?,
      art: json['art'] as bool?,
      science: json['science'] as bool?,
      geography: json['geography'] as bool?,
      socialStudies: json['socialStudies'] as bool?,
      history: json['history'] as bool?,
      computer: json['computer'] as bool?,
    );
  }
}

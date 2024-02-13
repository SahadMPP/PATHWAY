class Student {
  final String? name;
  final String? age;
  final String? email;
  final String? password;

  Student({this.name, this.age, this.email, this.password});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      name: json['name'],
      age: json['age'],
      email: json['email'],
      password: json['password'],
    );
  }
}

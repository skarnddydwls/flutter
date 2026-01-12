class User {
  final String email;
  final String password;
  final String name;
  final String birth;
  final String gender;

  User({
    required this.email,
    required this.password,
    required this.name,
    required this.birth,
    required this.gender,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'birth' : birth,
      'gender': gender
    };
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User (
      email: json['email'] as String,
      password: json['password'] as String,
      gender: json['gender'] as String,
      birth: json['birth'] as String,
      name: json['name'] as String,
    );
  }
}
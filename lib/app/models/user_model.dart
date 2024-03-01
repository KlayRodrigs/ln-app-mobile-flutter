class UserModel {
  final String email, password, phone, name;

  UserModel(
      {required this.email,
      required this.password,
      required this.phone,
      required this.name});

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map["email"],
      password: map["email"],
      name: map['name'],
      phone: map['phone'],
    );
  }
}

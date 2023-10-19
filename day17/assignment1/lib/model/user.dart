class User {
  String username;
  String? email;
  String? avatar;

  User({
    required this.username,
    required this.email,
    required this.avatar,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      username: map['username'],
      email: map['email'],
      avatar: map['avatar'],
    );
  }
}

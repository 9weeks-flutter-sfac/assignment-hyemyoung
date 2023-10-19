class Secret {
  String secret;
  String author;

  Secret({
    required this.secret,
    required this.author,
  });

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      secret: map['secret'],
      author: map['author'],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
class License {
  String name;
  String url;

  License({
    required this.name,
    required this.url,
  });

  factory License.fromMap(Map<String, dynamic> map) {
    return License(
      name: map['name'],
      url: map['url'],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment1/model/license.dart';

class Phonetic {
  String text;
  String? audio;
  String? sourceUrl;
  License license;

  Phonetic({
    required this.text,
    required this.audio,
    required this.sourceUrl,
    required this.license,
  });

  factory Phonetic.fromMap(Map<String, dynamic> map) {
    return Phonetic(
      text: map['text'],
      audio: map['audio'],
      sourceUrl: map['sourceUrl'],
      license: License.fromMap(map["license"]),
    );
  }
}

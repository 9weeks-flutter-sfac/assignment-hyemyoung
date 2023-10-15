// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:assignment1/model/definition.dart';

class Meaning {
  String partOfSpeech;
  List<Definition> definitions;

  Meaning({
    required this.partOfSpeech,
    required this.definitions,
  });

  factory Meaning.fromMap(Map<String, dynamic> map) {
    return Meaning(
      partOfSpeech: map['partOfSpeech'],
      definitions: List<Definition>.from(
          map['definitions'].map((e) => Definition.fromMap(e))),
    );
  }
}

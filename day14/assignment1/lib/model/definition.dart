// ignore_for_file: public_member_api_docs, sort_constructors_first
class Definition {
  String definition;
  List<String> synonyms;
  List<String> antonyms;
  String? example;

  Definition({
    required this.definition,
    required this.synonyms,
    required this.antonyms,
    this.example,
  });

  factory Definition.fromMap(Map<String, dynamic> map) {
    return Definition(
      definition: map['definition'],
      synonyms: List<String>.from(map['synonyms']),
      antonyms: List<String>.from(map['antonyms']),
      example: map['example'],
    );
  }
}

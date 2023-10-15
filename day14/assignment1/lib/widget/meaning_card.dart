import 'package:flutter/material.dart';
import '../model/meaning.dart';

class MeaningCard extends StatelessWidget {
  const MeaningCard({super.key, required this.meaning});
  final Meaning meaning;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            meaning.partOfSpeech,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: meaning.definitions.length,
            itemBuilder: (context, index) =>
                ListTile(title: Text(meaning.definitions[index].definition)),
          ),
        ],
      ),
    );
  }
}

import 'package:assignment1/widget/meaning_card.dart';
import 'package:flutter/material.dart';
import '../model/dict.dart';

class DictCard extends StatelessWidget {
  const DictCard({super.key, required this.dict});
  final Dict dict;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            dict.word,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const Divider(),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dict.meanings.length,
              itemBuilder: ((context, index) {
                return MeaningCard(meaning: dict.meanings[index]);
              }))
        ],
      ),
    ));
  }
}

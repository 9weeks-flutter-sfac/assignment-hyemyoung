import 'package:flutter/material.dart';

class AnimalName extends StatelessWidget {
  const AnimalName({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 300,
      child: Text(
        name,
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({super.key, required this.imgUrl, required this.foodName});

  final String imgUrl;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(foodName),
          Text('[담기]'),
        ],
      ),
    );
  }
}

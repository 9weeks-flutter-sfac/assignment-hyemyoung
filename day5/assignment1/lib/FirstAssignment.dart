import 'package:flutter/material.dart';
import 'AnimalName.dart';

class FirstAssignment extends StatelessWidget {
  FirstAssignment({super.key});

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1번 과제'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        child: Icon(Icons.vertical_align_top),
      ),
      body: ListView(
        controller: _scrollController,
        children: [
          AnimalName(name: '강아지'),
          AnimalName(name: '고양이'),
          AnimalName(name: '앵무새'),
          AnimalName(name: '토끼'),
          AnimalName(name: '오리'),
          AnimalName(name: '거위'),
          AnimalName(name: '원숭이'),
        ],
      ),
    );
  }
}

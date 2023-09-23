import 'package:flutter/material.dart';
import 'Assignment2.dart';
import 'Assignment3.dart';
import 'Assignment4.dart';

class FirstAssignment extends StatelessWidget {
  const FirstAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('5일차 과제'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondAssignment()));
              },
              child: Text('1번 과제'),
            ),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdAssignment()));
              },
              child: Text('2번 과제'),
            ),
            SizedBox(height: 120),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FourthAssignment()));
              },
              child: Text('3번 과제'),
            ),
          ],
        ),
      ),
    );
  }
}

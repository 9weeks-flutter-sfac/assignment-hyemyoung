// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaff());
  }
}

class Scaff extends StatefulWidget {
  Scaff({super.key});

  @override
  State<Scaff> createState() => _ScaffState();
}

class _ScaffState extends State<Scaff> {
  int inputValueX = 0;
  int inputValueY = 0;
  int resultValue = 0;

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사칙연산'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text('X의 값은'),
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(left: 50),
                    child: TextField(
                      onChanged: (value) {
                        inputValueX = int.parse(value);
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'X의 값을 입력하세요.',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text('Y의 값은'),
                  Container(
                    width: 200,
                    margin: const EdgeInsets.only(left: 50),
                    child: TextField(
                      onChanged: (value) {
                        inputValueY = int.parse(value);
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Y의 값을 입력하세요.',
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  resultValue = inputValueX + inputValueY;
                  setState(() {});
                  showResultDialog(context, resultValue);
                },
                child: Text('더하기의 결과값은?!'),
              ),
              ElevatedButton(
                onPressed: () {
                  resultValue = inputValueX * inputValueY;
                  setState(() {});
                  showResultDialog(context, resultValue);
                },
                child: Text('곱하기의 결과값은?!'),
              ),
              ElevatedButton(
                onPressed: () {
                  resultValue = inputValueX - inputValueY;
                  setState(() {});
                  showResultDialog(context, resultValue);
                },
                child: Text('빼기의 결과값은?!'),
              ),
              ElevatedButton(
                onPressed: () {
                  double divideValue = inputValueX / inputValueY;
                  resultValue = divideValue.round();
                  setState(() {});
                  showResultDialog(context, resultValue);
                },
                child: Text('나누기의 결과값은?!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondAssignment extends StatefulWidget {
  const SecondAssignment({super.key});

  @override
  State<SecondAssignment> createState() => _SecondAssignmentState();
}

class _SecondAssignmentState extends State<SecondAssignment> {
  String inputValue = '';
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2번 과제'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          inputValue = '';
          _textFieldController.clear();
          setState(() {});
        },
        child: Icon(Icons.close),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textFieldController,
            onChanged: (value) {
              inputValue = value;
              setState(() {});
            },
            decoration: InputDecoration(
              hintText: '입력하는대로 아래 글자가 나옵니다',
            ),
          ),
          Text(inputValue)
        ],
      ),
    );
  }
}

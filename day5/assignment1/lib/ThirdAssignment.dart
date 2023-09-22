import 'package:flutter/material.dart';

class ThirdAssignment extends StatefulWidget {
  ThirdAssignment({super.key});

  final TextEditingController _textFieldController = TextEditingController();

  @override
  State<ThirdAssignment> createState() => _ThirdAssignmentState();
}

class _ThirdAssignmentState extends State<ThirdAssignment> {
  bool isSunClicked = false;
  bool isMoonClicked = false;
  bool isStarClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3번 과제'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isSunClicked = false;
          isMoonClicked = false;
          isStarClicked = false;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.sunny,
                color: isSunClicked ? Colors.red : Colors.grey),
            title: Text('Sun'),
            trailing: IconButton(
              onPressed: () {
                isSunClicked = !isSunClicked;
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_right,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dark_mode,
                color: isMoonClicked ? Colors.amber : Colors.grey),
            title: Text('Moon'),
            trailing: IconButton(
              onPressed: () {
                isMoonClicked = !isMoonClicked;
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_right,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.star,
                color: isStarClicked ? Colors.amber : Colors.grey),
            title: Text('Star'),
            trailing: IconButton(
              onPressed: () {
                isStarClicked = !isStarClicked;
                setState(() {});
              },
              icon: Icon(
                Icons.arrow_right,
              ),
            ),
          ),
          TextField(
            onSubmitted: (value) {
              if (value == "태양") isSunClicked = !isSunClicked;
              if (value == "달") isMoonClicked = !isMoonClicked;
              if (value == "별") isStarClicked = !isStarClicked;
              setState(() {});
            },
            decoration: InputDecoration(
              hintText: '키고 끄고싶은 아이콘을 입력하세요.',
              border: OutlineInputBorder(),
            ),
          )
        ],
      ),
    );
  }
}

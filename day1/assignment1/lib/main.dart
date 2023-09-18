import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RichText 예제'),
        ),
        body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '안녕하세요!\n간단하게 제 ',
                ),
                TextSpan(
                  text: '소개',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlue,
                  ),
                ),
                TextSpan(
                  text: '를 해보겠습니다\n\n',
                ),
                TextSpan(
                  text: '먼저 저의 MBTI는 ',
                ),
                TextSpan(
                  text: 'INFJ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: '이고\n직업은 ',
                ),
                TextSpan(
                  text: '개발자',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: '입니다.\n\n',
                ),
                TextSpan(
                  text: '꿈',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.amber,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                    decorationThickness: 2.0,
                  ),
                ),
                TextSpan(
                  text: '은 없고요\n그냥 놀고 싶습니다\n\n',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                    decorationThickness: 2.0,
                  ),
                ),
                TextSpan(
                  text: '감사합니다',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.purpleAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

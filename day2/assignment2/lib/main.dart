// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "오늘의 하루는",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              "어땠나요?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.normal),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: 300.0,
              height: 180.0,
              child: PageView(children: [
                Container(
                  child: Center(
                    child: Text(
                      '행복함',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  width: 300.0,
                  height: 180.0,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.orange,
                        Colors.yellow,
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      '상쾌함',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  width: 300.0,
                  height: 180.0,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue,
                        Colors.green,
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text(
                      '우울함',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  width: 300.0,
                  height: 180.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.black,
                        Colors.black12,
                      ],
                    ),
                  ),
                ),
              ]),
            ),
            Divider(),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 14.0),
              child: ListTile(
                title: Text(
                  '곰돌이',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '프론트엔드',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                    Text(
                      'flutter, react',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                leading: ClipOval(
                  child: Image.network(
                      'https://lh3.googleusercontent.com/3wJ3kGLIiv3hDlhRRkEx1zSqHf5-4VbVTEPfsDHY8EP8n_wa4kPfGjlga4deb08rG14DYauPFuTmvdH434NPueF4XA=s186'),
                ),
                trailing: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

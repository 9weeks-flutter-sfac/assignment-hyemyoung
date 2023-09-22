// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'OptionCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> orderedList = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            '분식왕 이테디 주문하기',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              '주문 리스트',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: const EdgeInsets.all(6), child: Text('$orderedList')),
            SizedBox(
              height: 10,
            ),
            Text(
              '음식',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  InkWell(
                    onTap: () {
                      orderedList.add('떡볶이');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_bokki.png', foodName: '떡볶이'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('맥주');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_beer.png', foodName: '맥주'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('김밥');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_kimbap.png', foodName: '김밥'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('오므라이스');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_omurice.png', foodName: '오므라이스'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('돈까스');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_pork_cutlets.png',
                        foodName: '돈까스'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('라면');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_ramen.png', foodName: '라면'),
                  ),
                  InkWell(
                    onTap: () {
                      orderedList.add('우동');
                      setState(() {});
                    },
                    child: OptionCard(
                        imgUrl: 'assets/option_udon.png', foodName: '우동'),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            orderedList = [];
            setState(() {});
          },
          label: Text('초기화하기'),
        ),
      ),
    );
  }
}

import 'package:assignment2/admin_page.dart';
import 'package:flutter/material.dart';
import 'OptionCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> orderedList = [];

  @override
  Widget build(BuildContext cotext) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminPage()),
            );
          },
          child: Text(
            '분식왕 이테디 주문하기',
            style: TextStyle(color: Colors.black),
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: orderedList.isNotEmpty
          ? FloatingActionButton.extended(
              label: Text('결제하기'),
              onPressed: () {},
            )
          : null,
      body: Column(
        children: [
          Text(
            '주문 리스트',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 50,
            child: orderedList.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: orderedList.length,
                    itemBuilder: (context, index) {
                      return Chip(
                        label: Text(orderedList[index]),
                        onDeleted: () {
                          orderedList.removeAt(index);
                          setState(() {});
                        },
                      );
                    },
                  )
                : Text('주문한 옵션이 없습니다.'),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '음식',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}

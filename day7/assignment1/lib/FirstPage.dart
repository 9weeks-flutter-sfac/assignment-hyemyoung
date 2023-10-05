import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'data.dart';
import 'dart:math';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  PageController _pageController = PageController();

  String currentImgUrl = '';

  _jumpToRandomPage() {
    Random _random = Random();
    int _randomIndex = _random.nextInt(imageUrl.length);

    currentImgUrl = imageUrl[_randomIndex];
    _pageController.jumpToPage(_randomIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7일차 과제 1번'),
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullDown: true,
        header: WaterDropHeader(),
        onRefresh: () {
          _jumpToRandomPage();
          _refreshController.refreshCompleted();
        },
        child: PageView.builder(
          controller: _pageController,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          itemCount: imageUrl.length,
          itemBuilder: (BuildContext, index) => Card(
            child: Center(
              child: ClipRRect(
                child: Image.network(imageUrl[index]),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

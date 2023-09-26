import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'data.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('7일차 과제 2번'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          child: Center(
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 2500),
              ),
              items: imageUrl.map(
                (item) {
                  return ClipRRect(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  );
                },
              ).toList(),
            ),
          ),
        ));
  }
}

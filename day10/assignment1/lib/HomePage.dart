// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'widgets/CustomizedBackground.dart';
import 'widgets/HomePageButton.dart';
import 'SecretsPage.dart';
import 'UploadPage.dart';
import 'AuthorsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "흰동가리의 비밀들",
                  style: TextStyle(
                      color: Color(0xFF2D698A),
                      fontFamily: 'NeoFont',
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                BounceInDown(
                    from: 10,
                    child: Image.asset('assets/images/clown-fish-right.png',
                        width: 120)),
                FlipInX(
                  delay: Duration(milliseconds: 100),
                  child: HomePageButton(
                    name: '비밀 보기',
                    routTo: SecretPage(),
                  ),
                ),
                FlipInX(
                  delay: Duration(milliseconds: 600),
                  child: HomePageButton(
                    name: '비밀 공유',
                    routTo: UploadPage(),
                  ),
                ),
                FlipInX(
                  delay: Duration(milliseconds: 1000),
                  child: HomePageButton(
                    name: '작성자들',
                    routTo: AuthorsPage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

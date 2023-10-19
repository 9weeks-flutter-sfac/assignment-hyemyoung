// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:animate_do/animate_do.dart';
import 'package:assignment1/controller/authors_controller.dart';
import 'package:assignment1/util/app_text_style.dart';
import 'package:flutter/material.dart';
import '../widget/customized_app_bar.dart';
import '../widget/customized_background.dart';
import 'package:get/get.dart';

class AuthorsPage extends GetView<AuthorsController> {
  const AuthorsPage({super.key});
  static const String route = '/authors';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Column(
                children: [
                  FadeInDown(
                    from: 10,
                    delay: Duration(milliseconds: 500),
                    child: Text(
                      '앗 이 사람들이 비밀을 털어놓고 있습니다 ! ! !',
                      style: AppTextStyle.bodyTextOrange,
                    ),
                  ),
                  SizedBox(height: 5),
                  FadeInDown(
                    from: 10,
                    delay: Duration(milliseconds: 1000),
                    child: Text(
                      "흰동가리가 영원히 비밀을 지키진 않네요...",
                      style: AppTextStyle.bodyTextOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              AnimatedOpacity(
                opacity: controller.opacity,
                duration: Duration(milliseconds: 2000),
                child: Dance(
                  delay: Duration(milliseconds: 2500),
                  child: Image.asset(
                    'assets/images/clown-fish-left.png',
                    width: 20,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(
                    top: 35,
                    left: 50,
                    right: 50,
                  ),
                  alignment: Alignment.center,
                  height: 500.0,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.userList.length,
                      itemBuilder: (context, index) {
                        var items = controller.userList[index];
                        return FadeInDown(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text(items.username.substring(0, 1),
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                              backgroundColor: Colors.lightBlueAccent,
                            ),
                            title: Text(
                              items.username,
                              style: AppTextStyle.bodyText2,
                            ),
                          ),
                        );
                      })),
            ],
          )
        ],
      ),
    );
  }
}

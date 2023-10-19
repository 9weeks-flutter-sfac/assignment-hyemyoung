import 'package:assignment1/controller/auth_controller.dart';
import 'package:assignment1/model/app_routes.dart';
import 'package:assignment1/view/widget/customized_app_bar.dart';
import 'package:assignment1/view/widget/customized_getsture_detector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/app_text_style.dart';
import '../widget/customized_background.dart';

class SettingPage extends GetView<AuthController> {
  const SettingPage({super.key});
  static const String route = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: controller.user != null ? CustomizedAppbar() : null,
        body: Stack(
          fit: StackFit.expand,
          children: [
            CustomizedBackground(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  controller.user != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/images/clown-fish-left.png'),
                              backgroundColor: Colors.transparent,
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  controller.user!.username,
                                  textAlign: TextAlign.start,
                                  style: AppTextStyle.bodyText2,
                                ),
                                SizedBox(height: 5),
                                Text(
                                  controller.user!.email ?? '',
                                  textAlign: TextAlign.start,
                                  style: AppTextStyle.smallText,
                                ),
                              ],
                            )
                          ],
                        )
                      : Text(
                          '로그인 페이지로 이동해주세요.',
                          style: AppTextStyle.bodyText2,
                        ),
                  SizedBox(height: 20),
                  controller.user != null
                      ? CustomizedGestureDetector(
                          controller: controller.logout, text: '로그아웃')
                      : CustomizedGestureDetector(
                          controller: () => Get.toNamed(AppRoutes.login),
                          text: '로그인')
                ],
              ),
            ),
          ],
        ));
  }
}

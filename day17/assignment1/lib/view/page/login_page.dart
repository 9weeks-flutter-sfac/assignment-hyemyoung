import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/model/app_routes.dart';
import 'package:assignment1/view/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/app_color.dart';
import '../../util/app_text_style.dart';
import '../widget/customized_getsture_detector.dart';
import '../widget/customized_text_input.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const String route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomizedTextInput(
                controller: controller.idController,
                hintText: '아이디',
                autofocus: true,
                obscureText: false,
              ),
              SizedBox(height: 10),
              CustomizedTextInput(
                controller: controller.pwController,
                hintText: '비밀번호',
                autofocus: false,
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomizedGestureDetector(
                  controller: controller.login, text: '로그인'),
              TextButton(
                onPressed: () => Get.toNamed(AppRoutes.signup),
                child: Text('회원가입', style: AppTextStyle.bodyText2),
              )
            ],
          ),
        ),
      ),
    );
  }
}

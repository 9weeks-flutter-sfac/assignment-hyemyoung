import 'package:assignment1/model/app_routes.dart';
import 'package:assignment1/view/widget/customized_text_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/signup_controller.dart';
import '../../util/app_color.dart';
import '../../util/app_text_style.dart';
import '../widget/customized_getsture_detector.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const String route = '/signup';

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
                controller: controller.emailController,
                hintText: '이메일',
                autofocus: true,
                obscureText: false,
              ),
              SizedBox(height: 10),
              CustomizedTextInput(
                controller: controller.usernameController,
                hintText: '닉네임',
                autofocus: false,
                obscureText: false,
              ),
              SizedBox(height: 10),
              CustomizedTextInput(
                controller: controller.pwController,
                hintText: '비밀번호',
                autofocus: false,
                obscureText: true,
              ),
              SizedBox(height: 10),
              CustomizedTextInput(
                controller: controller.pwConfirmController,
                hintText: '비밀번호 확인',
                autofocus: false,
                obscureText: true,
              ),
              SizedBox(height: 20),
              CustomizedGestureDetector(
                  controller: controller.signup, text: '회원가입'),
              TextButton(
                onPressed: () => Get.toNamed(AppRoutes.login),
                child: Text('로그인', style: AppTextStyle.bodyText2),
              )
            ],
          ),
        ),
      ),
    );
  }
}

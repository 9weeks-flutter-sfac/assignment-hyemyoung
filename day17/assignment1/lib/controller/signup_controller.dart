import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  var emailController = TextEditingController();
  var usernameController = TextEditingController();
  var pwController = TextEditingController();
  var pwConfirmController = TextEditingController();

  var authController = Get.find<AuthController>();

  signup() {
    authController.signup(
      emailController.text,
      usernameController.text,
      pwController.text,
      pwConfirmController.text,
    );
  }

  handleClearTextField(value) {
    if (value == true) {
      emailController.text = '';
      usernameController.text = '';
      pwController.text = '';
      pwConfirmController.text = '';
    }
  }

  void onInit() {
    super.onInit();
    ever(authController.isSignupSucceed, handleClearTextField);
  }
}

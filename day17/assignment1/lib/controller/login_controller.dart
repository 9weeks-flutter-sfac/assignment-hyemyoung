import 'package:assignment1/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var idController = TextEditingController();
  var pwController = TextEditingController();

  var authController = Get.find<AuthController>();

  login() {
    authController.login(idController.text, pwController.text);
  }

  handleClearTextField(value) {
    if (value == true) {
      idController.text = '';
      pwController.text = '';
    }
  }

  void onInit() {
    super.onInit();
    ever(authController.isLoginSucceed, handleClearTextField);
  }
}

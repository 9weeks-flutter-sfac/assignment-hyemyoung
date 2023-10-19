import 'package:assignment1/controller/login_controller.dart';
import 'package:assignment1/controller/secret_controller.dart';
import 'package:assignment1/controller/signup_controller.dart';
import 'package:assignment1/controller/upload_controller.dart';
import 'package:assignment1/model/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/auth_controller.dart';
import 'controller/authors_controller.dart';
import 'model/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.put(LoginController());
        Get.put(SignupController());
        Get.put(SecretController(), permanent: true);
        Get.put(UploadController(), permanent: true);
        Get.put(AuthorsController(), permanent: true);
      }),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.login,
    );
  }
}

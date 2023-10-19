import 'package:assignment1/view/page/authors_page.dart';
import 'package:assignment1/view/page/home_page.dart';
import 'package:assignment1/view/page/secrets_page.dart';
import 'package:assignment1/view/page/setting_page.dart';
import 'package:assignment1/view/page/upload_page.dart';
import '../view/page/login_page.dart';
import '../view/page/signup_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(name: HomePage.route, page: () => const HomePage()),
    GetPage(name: SecretPage.route, page: () => const SecretPage()),
    GetPage(name: UploadPage.route, page: () => const UploadPage()),
    GetPage(name: AuthorsPage.route, page: () => const AuthorsPage()),
    GetPage(name: LoginPage.route, page: () => const LoginPage()),
    GetPage(name: SignupPage.route, page: () => const SignupPage()),
    GetPage(name: SettingPage.route, page: () => const SettingPage()),
  ];
}

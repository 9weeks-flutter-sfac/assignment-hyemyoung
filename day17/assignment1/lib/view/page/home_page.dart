import 'package:animate_do/animate_do.dart';
import 'package:assignment1/view/page/setting_page.dart';
import 'package:flutter/material.dart';
import '../../util/app_text_style.dart';
import '../widget/customized_background.dart';
import '../widget/home_page_button.dart';
import 'authors_page.dart';
import 'secrets_page.dart';
import 'upload_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String route = '/home';

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "흰동가리의 비밀들",
                  style: AppTextStyle.headerText,
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
                    routTo: SecretPage.route,
                  ),
                ),
                FlipInX(
                  delay: Duration(milliseconds: 400),
                  child: HomePageButton(
                    name: '비밀 공유',
                    routTo: UploadPage.route,
                  ),
                ),
                FlipInX(
                  delay: Duration(milliseconds: 700),
                  child: HomePageButton(
                    name: '작성자들',
                    routTo: AuthorsPage.route,
                  ),
                ),
                FlipInX(
                  delay: Duration(milliseconds: 1000),
                  child: HomePageButton(
                    name: '앱 설정',
                    routTo: SettingPage.route,
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

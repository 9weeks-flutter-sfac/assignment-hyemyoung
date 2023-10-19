import 'package:assignment1/util/api_routes.dart';
import 'package:assignment1/view/page/home_page.dart';
import 'package:assignment1/view/page/login_page.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../model/user.dart';

class AuthController extends GetxController {
  final Rxn<User> _user = Rxn<User>();
  final RxBool isLoginSucceed = false.obs;
  final RxBool isSignupSucceed = false.obs;

  Dio dio = Dio();

  User? get user => _user.value;

  isEmail(String input) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(input);
  }

  login(String id, String pw) async {
    try {
      var res = await dio
          .post(ApiRoutes.usersLogin, data: {'identity': id, 'password': pw});
      if (res.statusCode == 200) {
        isLoginSucceed.value = true;
        var data = Map<String, dynamic>.from(res.data["record"]);
        _user(User.fromMap(data));
      }
    } on DioException catch (e) {
      isLoginSucceed.value = false;
      if (pw.length < 9) {
        Get.snackbar('로그인 오류', '비밀번호는 9자 이상이어야 합니다.');
      } else {
        Get.snackbar('로그인 오류', '등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력했습니다.');
      }
    }
  }

  signup(
    String email,
    String username,
    String pw,
    String pwConfirm,
  ) async {
    try {
      var res = await dio.post(ApiRoutes.usersSignUp, data: {
        'email': email,
        'username': username,
        'password': pw,
        'passwordConfirm': pwConfirm,
      });
      if (res.statusCode == 200) {
        isSignupSucceed.value = true;
        _user(User.fromMap(res.data));
      }
    } on DioException catch (e) {
      isSignupSucceed.value = false;
      if (!isEmail(email)) {
        Get.snackbar('회원가입 오류', '올바른 이메일 형식인지 확인해주세요.');
      } else if (pw.length < 9) {
        Get.snackbar('회원가입 오류', '비밀번호는 9자 이상이어야 합니다.');
      } else if (pw != pwConfirm) {
        Get.snackbar('회원가입 오류', '비밀번호와 비밀번호 확인란이 일치하지 않습니다.');
      } else {
        Get.snackbar('회원가입 오류', '이미 가입된 이메일입니다.');
      }
    }
  }

  logout() {
    _user.value = null;
  }

  handleUserChanged(value) {
    if (value != null) {
      Get.offAndToNamed(HomePage.route);
      return; //여기에 return이 없으면 if문 밖의 구문도 실행시키기 때문에 return 필수
    }

    Get.offAndToNamed(LoginPage.route);
    return;
  }

  @override
  void onInit() {
    super.onInit();
    ever(_user, handleUserChanged);
  }
}

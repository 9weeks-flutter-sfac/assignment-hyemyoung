import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../model/user.dart';
import '../util/api_routes.dart';

class AuthorsController extends GetxController {
  RxList<User> _userList = <User>[].obs;
  double opacity = 0.0;

  List<User> get userList => _userList;

  changeOpacity() {
    Future.delayed(Duration(milliseconds: 2000), () {
      opacity = 1.0;
    });
  }

  readAuthors() async {
    Dio dio = Dio();
    var res = await dio.get(ApiRoutes.usersRead);
    if (res.statusCode == 200) {
      var data = List<Map<String, dynamic>>.from(res.data["items"]);
      _userList(data.map((e) => User.fromMap(e)).toList());
    }
  }

  @override
  void onInit() {
    super.onInit();
    readAuthors();
    changeOpacity();
  }
}

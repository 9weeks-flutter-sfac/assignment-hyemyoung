import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../model/secret.dart';

class SecretController extends GetxController {
  RxList<Secret> _secrets = <Secret>[].obs;
  Dio dio = Dio();

  List<Secret> get secrets => _secrets; //List라서 value 사용 안함

  readSecrets() async {
    var res = await dio.get(ApiRoutes.secretsRead);
    var items = List<Map<String, dynamic>>.from(res.data['items']);
    _secrets(items.map((e) => Secret.fromMap(e)).toList());
  }

  @override
  void onInit() {
    super.onInit();
    readSecrets();
  }
}

import 'package:assignment1/util/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class UploadController extends GetxController {
  var inputController = TextEditingController();
  var isBounce = false;
  Dio dio = Dio();

  upload() async {
    if (inputController.text.isEmpty) return;
    var res = await dio.post(ApiRoutes.secretsUpload, data: {
      'secret': inputController.text,
    });
    inputController.text = '';
  }

  @override
  void onInit() {
    super.onInit();
  }
}

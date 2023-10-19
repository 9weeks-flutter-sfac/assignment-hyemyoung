import 'package:animate_do/animate_do.dart';
import 'package:assignment1/util/app_color.dart';
import 'package:assignment1/util/app_text_style.dart';
import 'package:assignment1/view/widget/customized_getsture_detector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/upload_controller.dart';
import '../widget/customized_app_bar.dart';
import '../widget/customized_background.dart';

class UploadPage extends GetView<UploadController> {
  const UploadPage({super.key});
  static const String route = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextField(
                    controller: controller.inputController,
                    autofocus: true,
                    maxLength: 300,
                    maxLines: 10,
                    style: AppTextStyle.bodyText1,
                    cursorColor: AppColor.mainTextColor,
                    decoration: InputDecoration(
                      hintText: ' 익명의 흰동가리로서 비밀을 작성해주세요',
                      hintStyle: AppTextStyle.bodyTextGrey,
                      fillColor: AppColor.mainBackColor.withOpacity(0.1),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: AppColor.mainBackColor,
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                FlipInY(
                  child: CustomizedGestureDetector(
                      controller: controller.upload, text: '비밀 공유'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:get/get.dart';
import '../../controller/secret_controller.dart';
import '../../util/app_color.dart';
import '../../util/app_text_style.dart';
import '../widget/customized_app_bar.dart';
import '../widget/customized_background.dart';

class SecretPage extends GetView<SecretController> {
  const SecretPage({super.key});
  static const String route = '/secrets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomizedAppbar(),
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomizedBackground(),
          Obx(() => ListView.builder(
                shrinkWrap: false,
                itemCount: controller.secrets.length,
                itemBuilder: (context, index) {
                  var secretDatas =
                      controller.secrets![index].secret.toString();

                  var isEvenIndex = index.isEven;
                  var right = isEvenIndex ? 20.0 : null;
                  var left = isEvenIndex ? null : 20.0;
                  var fishImg = isEvenIndex
                      ? 'assets/images/clown-fish-right.png'
                      : 'assets/images/clown-fish-left.png';

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: BounceInUp(
                          child: Align(
                            alignment: isEvenIndex
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Container(
                              width: 200,
                              height: 200,
                              child: ElasticIn(
                                child: Stack(
                                  children: [
                                    Stack(
                                      fit: StackFit.expand,
                                      children: [
                                        Positioned(
                                          bottom: 0,
                                          left: left,
                                          right: right,
                                          child: Image.asset(
                                            fishImg,
                                            width: 40,
                                            height: 40,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Text(
                                                secretDatas,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: AppTextStyle.bodyText2,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '- ${index + 1}번째 흰동가리 -',
                                              style: AppTextStyle.smallText,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color:
                                      AppColor.mainBackColor.withOpacity(0.1),
                                  border: Border.all(
                                      color: AppColor.mainBackColor, width: 1),
                                  borderRadius: BorderRadius.circular(99)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../util/app_color.dart';
import '../../util/app_text_style.dart';

class CustomizedGestureDetector extends StatelessWidget {
  const CustomizedGestureDetector({
    super.key,
    required this.controller,
    required this.text,
  });

  final Function() controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: controller,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        width: 280,
        height: 45,
        child: Text(
          text,
          style: AppTextStyle.bodyTextWhite,
        ),
        decoration: BoxDecoration(
          color: AppColor.mainTextColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}

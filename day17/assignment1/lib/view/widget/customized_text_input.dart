import 'package:flutter/material.dart';
import '../../util/app_color.dart';
import '../../util/app_text_style.dart';

class CustomizedTextInput extends StatelessWidget {
  const CustomizedTextInput({
    super.key,
    required this.controller,
    required this.hintText,
    required this.autofocus,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final bool autofocus;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: controller,
        autofocus: autofocus,
        obscureText: obscureText,
        style: AppTextStyle.bodyText1,
        cursorColor: AppColor.mainTextColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppTextStyle.bodyTextGrey,
          fillColor: AppColor.mainBackColor.withOpacity(0.1),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColor.mainBackColor,
              width: 2.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: AppColor.mainBackColor,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

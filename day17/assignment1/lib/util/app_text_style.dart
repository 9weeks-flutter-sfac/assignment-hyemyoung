import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTextStyle {
  static const bodyText1 = TextStyle(
    fontFamily: 'NeoFont',
    color: AppColor.mainTextColor,
    fontSize: 16,
    letterSpacing: 1.5,
  );

  static const bodyText2 = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.bold,
      color: AppColor.mainTextColor,
      fontSize: 14);

  static const bodyTextGrey = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.bold,
      color: Colors.grey,
      fontSize: 14);

  static const bodyTextWhite = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.w900,
      color: Colors.white,
      fontSize: 16);

  static const bodyTextOrange = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.bold,
      color: Colors.orangeAccent,
      fontSize: 14);

  static const smallText = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.normal,
      color: Colors.grey,
      fontSize: 12);

  static const headerText = TextStyle(
      fontFamily: 'NeoFont',
      fontWeight: FontWeight.w900,
      color: AppColor.mainTextColor,
      fontSize: 24);
}

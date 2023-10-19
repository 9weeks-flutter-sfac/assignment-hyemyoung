import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({
    super.key,
    required this.name,
    required this.routTo,
  });

  final String name;
  final String routTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Get.toNamed(routTo);
      }),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        width: 280,
        height: 45,
        child: Text(
          name,
          style: TextStyle(
              color: Color(0xFF2D698A),
              fontFamily: 'NeoFont',
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFA1C8DD).withOpacity(0.1),
          border: Border.all(color: Color(0xFFA1C8DD), width: 1),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

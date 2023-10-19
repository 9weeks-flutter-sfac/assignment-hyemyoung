import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomizedAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomizedAppbar({
    super.key,
  });
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Color(0xFF2D698A),
        ),
        onPressed: () {
          Get.back();
        },
      ),
      title: Text(
        '뒤로 가기',
        style: TextStyle(color: Color(0xFF2D698A)),
      ),
    );
  }
}

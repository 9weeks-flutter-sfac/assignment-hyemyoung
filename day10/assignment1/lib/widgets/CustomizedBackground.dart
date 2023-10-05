import 'package:flutter/material.dart';

class CustomizedBackground extends StatelessWidget {
  const CustomizedBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/underwater.jpg',
      fit: BoxFit.contain,
      alignment: Alignment.bottomCenter,
      color: Color.fromRGBO(255, 255, 255, 0.6),
      colorBlendMode: BlendMode.modulate,
    );
  }
}

import 'package:flutter/material.dart';

class RectangleBox extends StatelessWidget {
  const RectangleBox({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffe9e9e9),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Image.asset(imagePath),
      ),
    );
  }
}

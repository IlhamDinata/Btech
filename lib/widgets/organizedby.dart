import 'package:flutter/material.dart';

class OrganizedBy extends StatelessWidget {
  const OrganizedBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/image/plaza.png'),
          Image.asset('assets/image/royal.png'),
          Image.asset('assets/image/ambar.png'),
          Image.asset('assets/image/porta.png'),
        ],
      ),
    );
  }
}

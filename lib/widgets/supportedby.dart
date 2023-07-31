import 'package:flutter/material.dart';

class SupportedBy extends StatelessWidget {
  const SupportedBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/image/polri.png'),
          Image.asset('assets/image/nonamepic.png'),
          Image.asset('assets/image/jogja.png'),
          Image.asset('assets/image/pesonaina.png'),
        ],
      ),
    );
  }
}

import 'package:btech/utils/mytext.dart';
import 'package:flutter/material.dart';

class IconButtonText extends StatelessWidget {
  const IconButtonText({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
    required this.text2,
  });

  final Function()? onTap;
  final String imagePath;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
            ),
            SizedBox(width: 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: MyText().homeoverlay1,
                ),
                text2 != ""
                    ? Text(
                        text2,
                        style: MyText().homeoverlay2,
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

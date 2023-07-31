import 'package:btech/utils/mytext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VoucherContent extends StatelessWidget {
  const VoucherContent({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.text,
    required this.text2,
    required this.text3,
  });

  final Function()? onTap;
  final String imagePath;
  final String text;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffDEDEDE),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: Image.asset(imagePath),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                text2,
                style: MyText().greytext,
              ),
              text3 != ""
                  ? Text(
                      text3,
                      style: MyText().greytext,
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

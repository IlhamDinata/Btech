import 'package:btech/utils/mytext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonBoxGold extends StatelessWidget {
  ButtonBoxGold({super.key, this.onTap, this.label});

  final Function()? onTap;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 26,
        decoration: BoxDecoration(
          color: Color(0xffFFEBD3),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            '${label}',
            style: GoogleFonts.plusJakartaSans(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: Color(0xffF06200)),
          ),
        ),
      ),
    );
  }
}

class ButtonBoxWhite extends StatelessWidget {
  ButtonBoxWhite({
    super.key,
    this.onTap,
    this.label,
    required this.imagePath,
  });

  final Function()? onTap;
  final String? label;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        alignment: Alignment.center,
        height: 26,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffDEDEDE)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Image.asset(imagePath),
              SizedBox(width: 3),
              Text('${label}', style: MyText().greytext),
            ],
          ),
        ),
      ),
    );
  }
}

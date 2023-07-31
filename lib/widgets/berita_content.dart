import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BeritaContent extends StatelessWidget {
  const BeritaContent({
    super.key,
    this.onTap,
    required this.imagePath,
    required this.text,
    required this.text2,
  });

  final Function()? onTap;
  final String imagePath;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Image.asset(imagePath),
            const SizedBox(width: 5),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0e0f0f)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    text2,
                    style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7a7e80)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

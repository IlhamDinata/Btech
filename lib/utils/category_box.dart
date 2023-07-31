import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.imagePath,
    required this.text,
    this.onTap,
  });

  final Function()? onTap;
  final String imagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFFF5DE),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

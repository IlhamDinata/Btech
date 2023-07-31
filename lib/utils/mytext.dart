import 'dart:ui';
import 'package:btech/utils/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText {
  TextStyle selamatdatang = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  TextStyle profilename = GoogleFonts.plusJakartaSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );

  TextStyle homeoverlay1 = GoogleFonts.plusJakartaSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  TextStyle homeoverlay2 = GoogleFonts.plusJakartaSans(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  TextStyle titlebold = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: MyColor.black,
  );

  TextStyle ratingtext = GoogleFonts.plusJakartaSans(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: Color(0xff525252),
  );

  TextStyle maxratingtext = GoogleFonts.plusJakartaSans(
    fontSize: 8,
    fontWeight: FontWeight.w400,
    color: Color(0xff949494),
  );

  TextStyle realpricetext = GoogleFonts.plusJakartaSans(
    decoration: TextDecoration.lineThrough,
    fontSize: 8,
    fontWeight: FontWeight.w700,
    color: Color(0xff333333),
  );

  TextStyle discountpricetext = GoogleFonts.plusJakartaSans(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Color(0xffE84B23),
  );

  TextStyle greytext = GoogleFonts.plusJakartaSans(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    color: Color(0xff8a8a8a),
  );
}

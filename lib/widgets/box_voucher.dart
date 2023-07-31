import 'package:btech/utils/dimens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxVoucher extends StatelessWidget {
  const BoxVoucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 170,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffDEDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VerticalDivider(
                  indent: 10,
                  endIndent: 10,
                  color: Color(0xffF06200),
                  thickness: 3,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "10",
                      style: GoogleFonts.plusJakartaSans(
                        color: Color(0xff333333),
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Voucher Segera Berakhir',
                      style: GoogleFonts.plusJakartaSans(
                          color: Color(0xff8a8a8a),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff6C6C6C),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: Dimens(context).width * 0.01),
        Container(
          height: 60,
          width: 170,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffDEDEDE),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icon/kupon.png'),
                SizedBox(width: Dimens(context).width * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'punya Kode promo?',
                      style: GoogleFonts.plusJakartaSans(
                          color: Color(0xff8a8a8a),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'klik disini',
                      style: GoogleFonts.plusJakartaSans(
                          color: Color(0xff8a8a8a),
                          fontSize: 10,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff6C6C6C),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

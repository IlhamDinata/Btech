import 'package:btech/utils/dimens.dart';
import 'package:btech/utils/icon_buttontext.dart';
import 'package:btech/utils/mycolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeOverlay extends StatelessWidget {
  const HomeOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColor.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      width: Dimens(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [MyColor.primary, MyColor.secondary],
                ),
              ),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButtonText(
                      onTap: () {
                        Get.snackbar('Points', '',
                            duration: Duration(seconds: 1));
                      },
                      imagePath: 'assets/icon/reward.png',
                      text: 'Points',
                      text2: '225',
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: MyColor.white,
                      indent: 10,
                      endIndent: 10,
                    ),
                    IconButtonText(
                      onTap: () {
                        Get.snackbar('Member', '',
                            duration: Duration(seconds: 1));
                      },
                      imagePath: 'assets/icon/member.png',
                      text: 'Member',
                      text2: 'Gold',
                    ),
                    VerticalDivider(
                      thickness: 1,
                      color: MyColor.white,
                      indent: 10,
                      endIndent: 10,
                    ),
                    IconButtonText(
                      onTap: () {
                        Get.snackbar('ScanQR', '',
                            duration: Duration(seconds: 1));
                      },
                      imagePath: 'assets/icon/scanqr.png',
                      text: 'ScanQR',
                      text2: '',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: Dimens(context).size.width,
              height: 8,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.1,
                  valueColor: AlwaysStoppedAnimation<Color>(MyColor.indicator),
                  backgroundColor: MyColor.indicator2,
                ),
              ),
            ),
            const SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('225/1000',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 12, fontWeight: FontWeight.w500)),
                Text(
                  'Platinum',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff999999)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

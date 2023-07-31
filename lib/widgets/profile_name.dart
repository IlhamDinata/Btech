import 'package:btech/utils/dimens.dart';
import 'package:btech/utils/mytext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: AssetImage('assets/image/profilepic.png'),
                  fit: BoxFit.contain),
            ),
          ),
          SizedBox(width: Dimens(context).width * 0.03),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Selamat Datang", style: MyText().selamatdatang),
              Text("John Doe", style: MyText().profilename),
            ],
          ),
          SizedBox(width: Dimens(context).width * 0.08),
          InkWell(
            onTap: () {},
            child: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Image.asset('assets/icon/notification.png'),
            ),
          ),
          SizedBox(width: Dimens(context).width * 0.04),
          InkWell(
            onTap: () {},
            child: Container(
              width: 71,
              height: 28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/ticket.png'),
                  const SizedBox(width: 2),
                  Text(
                    "Promo",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

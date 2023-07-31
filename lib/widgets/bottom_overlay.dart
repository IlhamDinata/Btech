import 'package:btech/utils/button_box.dart';
import 'package:btech/utils/category_box.dart';
import 'package:btech/utils/dimens.dart';
import 'package:btech/utils/mycolor.dart';
import 'package:btech/utils/mytext.dart';
import 'package:btech/utils/rectangle.dart';
import 'package:btech/widgets/berita_content.dart';
import 'package:btech/widgets/box_voucher.dart';
import 'package:btech/widgets/list_hotel.dart';
import 'package:btech/widgets/organizedby.dart';
import 'package:btech/widgets/supportedby.dart';
import 'package:btech/widgets/voucher_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomOverlay extends StatelessWidget {
  const BottomOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8), topRight: Radius.circular(8)),
        color: MyColor.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryBox(
                onTap: () {},
                imagePath: 'assets/icon/hotel.png',
                text: 'Hotel',
              ),
              CategoryBox(
                onTap: () {},
                imagePath: 'assets/icon/mountain.png',
                text: 'Event',
              ),
              CategoryBox(
                onTap: () {},
                imagePath: 'assets/icon/grill.png',
                text: 'F & B',
              ),
              CategoryBox(
                onTap: () {},
                imagePath: 'assets/icon/ticket2.png',
                text: 'Ticket',
              ),
              CategoryBox(
                onTap: () {},
                imagePath: 'assets/icon/mall.png',
                text: 'Mall',
              ),
            ],
          ),
          SizedBox(height: Dimens(context).height * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Menginap seru di hotel mewah', style: MyText().titlebold),
              ButtonBoxGold(onTap: () {}, label: 'Lihat Semua'),
            ],
          ),
          const ListHotel(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Diskon Menarik', style: MyText().titlebold),
              ButtonBoxGold(onTap: () {}, label: 'Lihat Semua'),
            ],
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          SizedBox(
            child: Image.asset('assets/image/promotiket.png'),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/image/staycationdc.png'),
                  SizedBox(width: Dimens(context).width * 0.02),
                  Image.asset('assets/image/staycationdc.png'),
                ],
              ),
            ),
          ),
          SizedBox(height: Dimens(context).height * 0.02),
          BoxVoucher(),
          SizedBox(height: Dimens(context).height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Voucher Murah', style: MyText().titlebold),
              ButtonBoxGold(onTap: () {}, label: 'Lihat Semua'),
            ],
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          SizedBox(
            height: 26,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ButtonBoxWhite(
                  onTap: () {},
                  label: 'Semua',
                  imagePath: 'assets/icon/apple.png',
                ),
                ButtonBoxWhite(
                  onTap: () {},
                  label: 'Makanan & Minuman',
                  imagePath: 'assets/icon/apple.png',
                ),
                ButtonBoxWhite(
                  onTap: () {},
                  label: 'Kesehatan & Kecantikan',
                  imagePath: 'assets/icon/love.png',
                ),
              ],
            ),
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          VoucherContent(
              onTap: () {},
              imagePath: 'assets/image/vcambarrukmo.png',
              text: 'Voucher Ambarrukmo IDR 50K',
              text2: 'Tanggal Berakhir:',
              text3: '27 Februari - 31 Februari 2023'),
          SizedBox(height: Dimens(context).height * 0.01),
          VoucherContent(
              onTap: () {},
              imagePath: 'assets/image/vcsociolla.png',
              text: 'Sociolla',
              text2: 'Hadiah gratis untuk pembelian minimum Rp 50 Ribu',
              text3: ""),
          SizedBox(height: Dimens(context).height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Berita', style: MyText().titlebold),
              ButtonBoxGold(onTap: () {}, label: 'Lihat Berita'),
            ],
          ),
          BeritaContent(
            imagePath: 'assets/image/dinosaurus.png',
            text:
                'Wahana Dinosaurus menghidupkan malam akhir tahun di mall Ambarrukmo Plaza',
            text2: '22 Februari 2023',
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          BeritaContent(
            imagePath: 'assets/image/leisures.png',
            text: 'Land Of Leisures akan kembali untuk Jogja',
            text2: '12 Januari 2023',
          ),
          SizedBox(height: Dimens(context).height * 0.04),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Partners',
              style: MyText().titlebold,
            ),
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RectangleBox(imagePath: 'assets/image/balcony.png'),
                RectangleBox(imagePath: 'assets/image/urbanicon.png'),
                RectangleBox(imagePath: 'assets/image/balcony.png'),
              ],
            ),
          ),
          SizedBox(height: Dimens(context).height * 0.04),
          Text(
            'Organized by',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w700,
              fontSize: 10,
              color: Color(0xffD8B55F),
            ),
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          const OrganizedBy(),
          SizedBox(height: Dimens(context).height * 0.04),
          Text(
            'Supported by',
            style: MyText().titlebold,
          ),
          SizedBox(height: Dimens(context).height * 0.01),
          const SupportedBy(),
          SizedBox(
            height: 75,
            child: Image.asset('assets/image/pattern.png'),
          ),
        ],
      ),
    );
  }
}

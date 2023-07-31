import 'package:btech/model/hotel.dart';
import 'package:btech/utils/dimens.dart';
import 'package:btech/utils/mycolor.dart';
import 'package:btech/utils/mytext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ListHotel extends StatelessWidget {
  const ListHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Hotel.hotels.length,
          itemBuilder: (BuildContext context, int index) {
            return HotelContent(
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class HotelContent extends StatelessWidget {
  final int index;

  HotelContent({required this.index});

  @override
  Widget build(BuildContext context) {
    Hotel hotelcontent = Hotel.hotels[index];
    return InkWell(
      onTap: () {},
      child: SizedBox(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffE9E9E9)),
                  borderRadius: BorderRadius.circular(16),
                  color: MyColor.white),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        hotelcontent.image,
                        fit: BoxFit.cover,
                        width: 114,
                        height: 78,
                      ),
                    ),
                    SizedBox(height: Dimens(context).height * 0.01),
                    RatingBar.builder(
                      itemSize: 10,
                      initialRating: hotelcontent.star,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: hotelcontent.star.toInt(),
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) =>
                          Image.asset('assets/icon/star.png'),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Text(Hotel.hotels[index].title, style: MyText().titlebold),
                    SizedBox(height: Dimens(context).height * 0.004),
                    Row(
                      children: [
                        Text(hotelcontent.rating, style: MyText().ratingtext),
                        Text(hotelcontent.maxrating,
                            style: MyText().maxratingtext),
                        Text(hotelcontent.totalreview,
                            style: MyText().maxratingtext),
                      ],
                    ),
                    SizedBox(height: Dimens(context).height * 0.004),
                    Text(hotelcontent.realprice, style: MyText().realpricetext),
                    SizedBox(height: Dimens(context).height * 0.004),
                    Text(hotelcontent.discountprice,
                        style: MyText().discountpricetext),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(
                top: 15,
                left: 4,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/icon/diskon.png'),
                  Text(
                    '${hotelcontent.discount}%',
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 8,
                        color: MyColor.white),
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

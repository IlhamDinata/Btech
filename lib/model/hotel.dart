class Hotel {
  final String image;
  final String title;
  final String rating;
  final String maxrating;
  final String totalreview;
  final String realprice;
  final String discountprice;
  final int discount;
  final double star;

  Hotel({
    required this.image,
    required this.title,
    required this.rating,
    required this.maxrating,
    required this.totalreview,
    required this.realprice,
    required this.discountprice,
    required this.discount,
    required this.star,
  });

  static List<Hotel> hotels = [
    Hotel(
      image: 'assets/image/grandambarrukmo.png',
      title: 'Grand Ambarukmo',
      rating: '4.7/',
      maxrating: '5',
      totalreview: '(1200 Review)',
      realprice: 'Rp1.461.054',
      discountprice: 'Rp1.386.000',
      discount: -12,
      star: 4,
    ),
    Hotel(
      image: 'assets/image/royalambarrukmo.png',
      title: 'Royal Ambarukmo',
      rating: '4.9/',
      maxrating: '5',
      totalreview: '(1320 Review)',
      realprice: 'Rp2.522.801',
      discountprice: 'Rp1.540.916',
      discount: -17,
      star: 5,
    ),
    Hotel(
      image: 'assets/image/portahotel.png',
      title: 'Porta Hotel',
      rating: '4.4/',
      maxrating: '5',
      totalreview: '(910 Review)',
      realprice: 'Rp822.054',
      discountprice: 'Rp640.129',
      discount: -8,
      star: 3,
    ),
  ];
}

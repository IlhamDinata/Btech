import 'package:btech/bottomnavbar/bottom_navbar.dart';
import 'package:btech/screen/akunpage/akunpage.dart';
import 'package:btech/screen/homepage/homepage.dart';
import 'package:btech/screen/promopage/promopage.dart';
import 'package:btech/utils/app_pages.dart';
import 'package:get/get.dart';

class AppRoute {
  static const initial = AppPages.homepage;
  static final pages = [
    GetPage(name: PagesPath.bottomnavbar, page: () => BottomNav()),
    GetPage(name: PagesPath.homepage, page: () => HomePage()),
    GetPage(name: PagesPath.promopage, page: () => PromoPage()),
    GetPage(name: PagesPath.akunpage, page: () => AkunPage()),
  ];
}

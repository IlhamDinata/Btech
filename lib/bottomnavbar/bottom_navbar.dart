import 'package:btech/bottomnavbar/bottomnavbar_controller.dart';
import 'package:btech/screen/akunpage/akunpage.dart';
import 'package:btech/screen/homepage/homepage.dart';
import 'package:btech/screen/promopage/promopage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  final controller = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (context) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabindex,
            children: [
              HomePage(),
              PromoPage(),
              AkunPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Color(0xffBD7628),
            unselectedItemColor: Color(0xff333333),
            currentIndex: controller.tabindex,
            onTap: controller.changeTabIndex,
            items: [
              _bottombaritem('assets/icon/explore.png', 'Explore'),
              _bottombaritem('assets/icon/coupon.png', 'Promo'),
              _bottombaritem('assets/icon/primary.png', 'Akun'),
            ],
          ),
        );
      },
    );
  }
}

_bottombaritem(String imagePath, String label) {
  return BottomNavigationBarItem(
    icon: ImageIcon(
      AssetImage(imagePath),
    ),
    label: label,
  );
}

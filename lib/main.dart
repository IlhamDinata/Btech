import 'package:btech/bottomnavbar/bottom_navbar.dart';
import 'package:btech/screen/homepage/homepage.dart';
import 'package:btech/utils/app_pages.dart';
import 'package:btech/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Btech',
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}

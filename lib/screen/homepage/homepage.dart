import 'package:btech/utils/dimens.dart';
import 'package:btech/utils/mycolor.dart';
import 'package:btech/utils/mytext.dart';
import 'package:btech/widgets/bottom_overlay.dart';
import 'package:btech/widgets/home_overlay.dart';
import 'package:btech/widgets/profile_name.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * .30,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/pattern.png'),
                              fit: BoxFit.cover),
                          gradient: LinearGradient(
                            colors: [MyColor.primary, MyColor.secondary],
                          ),
                        ),
                      ),
                      const ProfileName(),
                    ],
                  ),
                  Container(
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/pattern.png'),
                          fit: BoxFit.cover),
                      gradient: LinearGradient(
                        colors: [MyColor.primary, MyColor.secondary],
                      ),
                    ),
                    child: BottomOverlay(),
                  )
                ],
              ),
              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .19,
                    right: 20.0,
                    left: 20.0),
                child: Container(
                  height: 110.0,
                  width: MediaQuery.of(context).size.width,
                  child: HomeOverlay(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

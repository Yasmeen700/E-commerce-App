import 'dart:async';

import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/constants/images.dart';
import 'package:ecommerce_mobile_app/home_page/home_page.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SplashScreen extends StatefulWidget {
  static String splashScreenRouteName = 'SplashPage';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    ScreensHelper(context);
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset(
              ShopAppImage.splashImage,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Center(
              child: Text(

                  "ATHENA",
                style: TextStyle(
                  color: GlobalColors.whiteColor,
                  fontSize: 40,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mon' ,
                ),
                // isRepeatingAnimation: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

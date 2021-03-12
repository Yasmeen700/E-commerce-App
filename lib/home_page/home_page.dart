
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/constants/images.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatelessWidget {
  static String homePageRouteName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 500,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                autoplayDuration: Duration(seconds: 4),
                dotSize: 4.0,
                dotColor: GlobalColors.brownGreyColor,
                dotIncreasedColor: GlobalColors.brownColor,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding:95.0,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                showIndicator: true,
                indicatorBgPadding: 7,
                overlayShadow: true,
                overlayShadowSize:0.7,
                overlayShadowColors: GlobalColors.brownColor,
                images: _getGalleryImages(),
              ),
            ),
            RaisedButton(
              color: GlobalColors.brownColor,
                child: Text("Log in"),
                onPressed: null,
                //     () {
                // Navigator.push(context, MaterialPageRoute(builder: (ctx){
                //   return LoginPage();
                // }));
                // },
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
            ),
            RaisedButton(
              color: GlobalColors.whiteColor,
                child: Text("Create Account"),
                onPressed: null,
                //     () {
                //   Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                //     return RegisterPage();
                //   }));
                // },
                shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
            ),
          ],
        ),
      ),
    );
  }
}

_getGalleryImages() {
  return [
    Column(
      children: [
        Text(
          'Swipe to browse',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 18,
            fontFamily: 'Mon',
            color: GlobalColors.brownColor,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: ScreensHelper.fromWidth(80),
          child: Text(
            ' it is sometimes known is dummy text used in laying out print graphic or web designs',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              fontFamily: 'Kanit',
              color: GlobalColors.brownColor,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: ScreensHelper.fromHeight(45),
          width: ScreensHelper.fromWidth(65),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              ShopAppImage.carousel1,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
    Column(
      children: [
        Text(
          'Shop your favourites',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 18,
            fontFamily: 'Mon',
            color: GlobalColors.brownColor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: ScreensHelper.fromWidth(80),
          child: Text(
            ' it is sometimes known is dummy text used in laying out print graphic or web designs',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              fontFamily: 'Kanit',
              color: GlobalColors.brownColor,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: ScreensHelper.fromHeight(45),
          width: ScreensHelper.fromWidth(65),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              ShopAppImage.carousel2,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  ];
}
// Shop your favourites
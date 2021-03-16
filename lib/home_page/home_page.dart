import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/constants/images.dart';
import 'file:///C:/Users/PC%20Win10/AndroidStudioProjects/ecommerce_mobile_app/lib/user_management/ui/log_in/login_page.dart';
import 'file:///C:/Users/PC%20Win10/AndroidStudioProjects/ecommerce_mobile_app/lib/user_management/ui/registure/register_page.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatelessWidget {
  static String homePageRouteName = 'homePage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 400,
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
                  dotVerticalPadding: 0.0,
                  animationCurve: Curves.fastOutSlowIn,
                  animationDuration: Duration(milliseconds: 1000),
                  showIndicator: true,
                  indicatorBgPadding: 7,
                  overlayShadow: true,
                  overlayShadowSize: 0.7,
                  overlayShadowColors: GlobalColors.brownColor,
                  images: _getGalleryImages(),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: ScreensHelper.fromWidth(80),
                height: ScreensHelper.fromHeight(7),
                // color: GlobalColors.brownColor,
                child: RaisedButton(
                    child: Text(
                      "Log in",
                      style: TextStyle(
                        color: GlobalColors.brownColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return LoginPage();
                      }));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
              SizedBox(height: 10,),
              Container(
                width: ScreensHelper.fromWidth(80),
                height: ScreensHelper.fromHeight(7),
                // color: GlobalColors.whiteColor,
                child: RaisedButton(
                    color: GlobalColors.brownColor,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: GlobalColors.whiteColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return RegisterPage();
                      }));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0))),
              ),
            ],
          ),
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
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
          height: 10,
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
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

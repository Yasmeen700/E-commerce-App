import 'package:ecommerce_mobile_app/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


import 'home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: SplashScreen.splashScreenRouteName,
      routes: {
        SplashScreen.splashScreenRouteName: (context) => SplashScreen(),
        HomePage.homePageRouteName: (context) => HomePage(),
      },
      // theme: ThemeData(
      //   brightness: Brightness.light,
      //   primaryColor: GlobalColors.whiteColor,
      //   appBarTheme: AppBarTheme(
      //     color: Colors.white,
      //     elevation: 0.0,
      //   ),
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(
      //     color: GlobalColors.whiteColor,
      //   ),
      // ),
      home: SafeArea(
        child: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}

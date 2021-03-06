import 'package:ecommerce_mobile_app/routes/home_page/home_page.dart';
import 'package:ecommerce_mobile_app/routes/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=> Cart(),
      child: MaterialApp(
        initialRoute: SplashScreen.splashScreenRouteName,
        routes: {
          SplashScreen.splashScreenRouteName: (context) => SplashScreen(),
          HomePage.homePageRouteName: (context) => HomePage(),
        },
        // theme: ThemeData(
        //   // brightness: Brightness.light,
        //   primaryColor: GlobalColors.whiteColor,
        //   primarySwatch: GlobalColors.lightBrownColor2,
        //   appBarTheme: AppBarTheme(
        //     color: Colors.white,
        //     elevation: 0.0,
        //   ),
        //   // backgroundColor: GlobalColors.whiteColor,
        //   iconTheme: IconThemeData(
        //     color: GlobalColors.whiteColor,
        //   ),
        // ),
        home: SafeArea(
          child: Scaffold(
            body: SplashScreen(),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/screens/products_page/products_page.dart';
import 'package:ecommerce_mobile_app/user_management/ui/log_in/password.dart';
import 'package:ecommerce_mobile_app/user_management/ui/log_in/user_name.dart';
import 'package:ecommerce_mobile_app/user_management/ui/registure/register_page.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';



class LoginPage extends StatefulWidget {
  static String routeName = 'LoginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: GlobalColors.brownColor,
          ),
        ),
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            margin:
                EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(7)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreensHelper.fromHeight(2),
                ),
                Text(
                  'Log In',
                  style: TextStyle(
                      color: GlobalColors.brownColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Mon',
                      fontSize: 20),
                ),
                SizedBox(
                  height: ScreensHelper.fromHeight(4),
                ),
                _buildFormsAndButtonsSection(),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  _buildFormsAndButtonsSection() {
    return Column(
      children: <Widget>[
        Container(
          child: UserNameTextField(),
        ),
        SizedBox(
          height: ScreensHelper.fromHeight(2.3),
        ),
        Column(
          children: <Widget>[
            Container(
              child: PasswordTextField(),
            ),
            SizedBox(
              height: ScreensHelper.fromHeight(1.5),
            ),
            FlatButton(
              height: ScreensHelper.fromHeight(7),
              minWidth: ScreensHelper.fromWidth(90),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(ScreensHelper.fromHeight(8))),
              color: GlobalColors.brownColor,
              child: Text(
                'Log In',
                style: TextStyle(color: GlobalColors.whiteColor),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ProductsScreen()));
              },
            ),
            SizedBox(
              height: ScreensHelper.fromHeight(4),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(65)),
              child: Container(
                padding: EdgeInsets.all(2),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    //   return ForgotPassword();
                    // }));
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      color: GlobalColors.brownColor,
                      fontFamily: 'Kanit',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: ScreensHelper.fromHeight(3),
            ),
            Container(
              padding: EdgeInsets.all(2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontFamily: 'Kanit', color: GlobalColors.brownColor),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => RegisterPage()));
                      // Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      //   return RegisterPage();
                      // }
                    },
                    child: Text(
                      'Sign up',
                      softWrap: true,
                      overflow:TextOverflow.fade,
                      style: TextStyle(
                        color: GlobalColors.whiteColor,
                        fontFamily: 'Kanit',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

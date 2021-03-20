import 'package:ecommerce_mobile_app/user_management/ui/confirm_password.dart';
import 'package:ecommerce_mobile_app/user_management/ui/log_in/password.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter_screenutil/screen_util.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextFormField password;
  TextFormField confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  'Change password',
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
        child: PasswordTextField(),
      ),
      SizedBox(
        height: ScreensHelper.fromHeight(2.3),
      ),
      Container(
        child: PasswordTextField(),
      ),
      SizedBox(
        height: ScreensHelper.fromHeight(1.5),
      ),
      Container(
        child: ConfirmPassword(),
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
          'Change password',
          style: TextStyle(color: GlobalColors.whiteColor),
        ),
        onPressed: () {},
      ),
      SizedBox(
        height: ScreensHelper.fromHeight(4),
      ),
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(65)),
        child: Container(
          padding: EdgeInsets.all(2),
        ),
      )
    ]);
  }
}


import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/user_management/ui/log_in/login_page.dart';
import 'package:ecommerce_mobile_app/user_management/ui/registure/register_user_name.dart';
import 'package:ecommerce_mobile_app/user_management/ui/registure/registrePassword.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import'package:ecommerce_mobile_app/pinCodePage/pinCodePage.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

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
            margin: EdgeInsets.symmetric(horizontal: ScreensHelper.fromWidth(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreensHelper.fromHeight(2),
                ),
                Text('Sign Up',style: TextStyle(color: GlobalColors.brownColor,fontWeight: FontWeight.w600,fontFamily:'Mon',fontSize: 20 ),),

                SizedBox(
                  height: ScreensHelper.fromHeight(4),
                ),
                _buildFormsAndButtonsSection(),
              ],
            ),
          ),
        ),
        // Positioned(
        //   width: ScreensHelper.fromWidth(100),
        //   bottom: ScreenUtil().setHeight(70),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       FadeTransAnimation(
        //         delayInMillisecond: 600,
        //         child: InkWell(
        //           onTap: () {},
        //           child: Text(
        //             'Already have account',
        //             style: TextStyle(color: GlobalColors.greyTextColor),
        //           ),
        //         ),
        //       ),
        //       FadeTransAnimation(
        //         delayInMillisecond: 600,
        //         child: InkWell(
        //           onTap: () {
        //             Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        //               return RegisterPage();
        //             }));
        //           },
        //           child: Text(
        //             ' Sign up',
        //             style: TextStyle(color: GlobalColors.primaryGreen),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ]),
    );
  }

  _buildFormsAndButtonsSection() {
    return
      Column(
        children: <Widget>[
          Container(
            child: RegistreUserNameTextField(),
          ),
          SizedBox(
            height: ScreensHelper.fromHeight(2.3),
          ),
          Container(
            child: RegistrePasswordTextField(),
          ),
          SizedBox(
            height: ScreensHelper.fromHeight(2.3),
          ),
          Container(
            child: ConfirmPassword(),
          ),
          SizedBox(
            height: ScreensHelper.fromHeight(4),
          ),

            FlatButton(
              height: ScreensHelper.fromHeight(7),
              minWidth: ScreensHelper.fromWidth(90),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(ScreensHelper.fromHeight(8))
              ),
              color: GlobalColors.brownColor,
              child: Text('Sign UP',style: TextStyle(color: GlobalColors.whiteColor),),

              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> pinCodePage()));
                print('object');
              },
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
                  " have an account?",
                  style: TextStyle(
                      fontFamily: 'Kanit', color: GlobalColors.brownColor),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => LoginPage()));
                    // Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    //   return RegisterPage();
                    // }
                  },
                  child: Text(
                    'Sign in',
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

    );
  }
}

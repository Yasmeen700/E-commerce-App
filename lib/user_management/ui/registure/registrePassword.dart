import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
final passwordController = TextEditingController();


class RegistrePasswordTextField extends StatefulWidget {
  @override
  _RegistrePasswordTextFieldState createState() => _RegistrePasswordTextFieldState();
}

class _RegistrePasswordTextFieldState extends State<RegistrePasswordTextField> {
  final _key = GlobalKey<FormState>();
  
  FocusNode _focus = FocusNode();
  bool _securePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _key,
      controller: passwordController,
      // initialValue: 'password',
      focusNode: _focus,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      obscureText: _securePassword,
      decoration: InputDecoration(
          filled: true,
          fillColor: GlobalColors.whiteColor,
          labelText: 'password',
          labelStyle: TextStyle(color: GlobalColors.brownColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.whiteColor),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.whiteColor),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),
          prefixIcon: Icon(Icons.lock, color: GlobalColors.brownColor),
          suffixIcon: IconButton(
            icon: _securePassword
                ? Icon(Icons.visibility_off)
                : Icon(Icons.visibility),
            color: GlobalColors.brownColor,
            onPressed: () {
              setState(() {
                _securePassword = !_securePassword;
              });
            },
          )),
      validator: (value) {
        if (value.isEmpty || value.length < 5) {
          return 'Password is too short!';
        }
        return null;
      },
    );
  }
}


class ConfirmPassword extends StatefulWidget {
  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _key = GlobalKey<FormState>();
  final _controller = TextEditingController();
  FocusNode _focus = FocusNode();
  bool _securePassword = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _key,
      controller: _controller,
      focusNode: _focus,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.done,
        obscureText: _securePassword,
      decoration: InputDecoration(
          filled: true,
          fillColor: GlobalColors.whiteColor,
          labelText: 'Confirm Password',
          labelStyle: TextStyle(
              color: GlobalColors.brownColor
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.whiteColor),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: GlobalColors.whiteColor),
            borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
          ),

          prefixIcon:Icon(Icons.lock,color: GlobalColors.brownColor),
          suffixIcon: IconButton(
            icon: _securePassword ? Icon(Icons.visibility):Icon(Icons.visibility_off),
            color: GlobalColors.brownColor,
            onPressed: (){
              setState(() {
                _securePassword=!_securePassword;
              });
            },
          )
      ),

      validator:  (value) {
        if (value != passwordController.text) {
          return 'Passwords do not match!';
        }
        return null;
      }

    );
  }
}

import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _key = GlobalKey<FormState>();
  final _controller = TextEditingController();
  FocusNode _focus = FocusNode();
  bool _securePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: _key,
      controller: _controller,
      focusNode: _focus,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          filled: true,
          fillColor: GlobalColors.whiteColor,
          labelText: 'password',
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
            icon: _securePassword ? Icon(Icons.visibility_off):Icon(Icons.visibility),
            color: GlobalColors.brownColor,
            onPressed: (){
              setState(() {
                _securePassword=!_securePassword;
              });
            },
          )
      ),
      validator: (value){

        if(value.isEmpty)
          return 'Invalid user name';
        return null;
      },
    obscureText: _securePassword,
    );
  }
}



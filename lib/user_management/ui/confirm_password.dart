import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_mobile_app/user_management/ui/log_in/password.dart';
class ConfirmPassword extends StatefulWidget {
  @override
  _ConfirmPasswordState createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  final _key = GlobalKey<FormState>();
  final _controller = TextEditingController();
  FocusNode _focus = FocusNode();
  bool _securePassword = true;
  @override
  Widget build(BuildContext context) {
    String _confirmPassword;
    return
      TextFormField(
        key: _key,
        controller: _controller,
        focusNode: _focus,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            filled: true,
            fillColor: GlobalColors.whiteColor,
            labelText: ' confirm password',
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

        obscureText: true,
        validator: (value) {
          if(value.isEmpty){
            return 'This field is required';
          }

          if (value != PasswordTextField ) {
            return 'Confirmation password does not match the entered password';
          }

          return null;
        },
        // onChanged: (value) => _confirmPassword = value,
      );

  }
}
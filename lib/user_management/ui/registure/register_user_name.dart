import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class RegistreUserNameTextField extends StatefulWidget {
  @override
  _RegistreUserNameTextFieldState createState() => _RegistreUserNameTextFieldState();
}
class _RegistreUserNameTextFieldState extends State<RegistreUserNameTextField> {
  TextEditingController _userNameController = TextEditingController();
  final _key = GlobalKey<FormState>();
  final FocusNode _focus = FocusNode();
  bool submit = false;
  bool _emailValidation = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _userNameController,
      key:_key,
      // initialValue: 'user name',
      focusNode: _focus,
      keyboardType: TextInputType.name,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: GlobalColors.whiteColor),
          borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: GlobalColors.whiteColor),
          borderRadius: BorderRadius.circular(ScreensHelper.fromWidth(8)),
        ),
        filled: true,
        fillColor: GlobalColors.whiteColor,
        labelText: 'your name',
        labelStyle: TextStyle(
            color: GlobalColors.brownColor
        ),
        prefixIcon: Icon(Icons.person,color: GlobalColors.brownColor),

      ),

      onChanged: (value) {
        if (!this.submit) return;
        _emailValidation = true;
        if (_key.currentState.validate()) {
          setState(() {
            _emailValidation = false;
          });
        }
      },
      onFieldSubmitted: (term) {
        this.submit = true;
        setState(() {});
        // _fieldFocusChange(context, myFocusNodeUserName, myFocusNodePassword);
      },
      validator: (value){

        if(value.isEmpty)
          return 'Invalid user name';
        return null;
      },
    );
  }
}



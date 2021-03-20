import 'dart:math';
import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class PinCodePage extends StatefulWidget {
  @override
  _PinCodePageState createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: GlobalColors.brownColor,
        // leading: Icon(Icons.arrow_back_outlined),
        title: Text(
          'Confirmation Code',
          style: FontStyles.pageTitle,
        ),
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'we sent you A verification code',
              style: FontStyles.titleDetails,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    new Random().nextInt(7).toString(),
                  ),
                  Text(
                    new Random().nextInt(2).toString(),
                  ),
                  Text(
                    new Random().nextInt(4).toString(),
                  ),
                  Text(
                    new Random().nextInt(3).toString(),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text("you didn't receive the code?"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                  child: GestureDetector(
                    child: Text(
                      'Try new code',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PinPutTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
          hintColor: Colors.green,
        ),
        home: Scaffold(
            body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(40.0),
            child: Center(
              child: PinPut(
                fieldsCount: 4,
                onSubmit: (String pin) => _showSnackBar(pin, context),
              ),
            ),
          ),
        )));
  }

  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: Duration(seconds: 5),
      content: Container(
          height: 80.0,
          child: Center(
            child: Text(
              'Pin Submitted. Value: $pin',
              style: TextStyle(fontSize: 25.0),
            ),
          )),
      backgroundColor: Colors.greenAccent,
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

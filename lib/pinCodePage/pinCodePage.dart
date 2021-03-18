
import 'dart:math';

import'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

void main(){
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: pinCodePage(),

      )
  );
}
class pinCodePage extends StatefulWidget {
  @override
  _pinCodePageState createState() => _pinCodePageState();
}

class _pinCodePageState extends State<pinCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(Icons.arrow_back_outlined),
        title: Text('Confirmation code'

        ),
      )
      ,
      body: Container(

        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('we sent you A verification code',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20 ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text(new Random().nextInt(7).toString(),),
                    Text(new Random().nextInt(2).toString(),),
                    Text(new Random().nextInt(4).toString(),),
                    Text(new Random().nextInt(3).toString(),),
                  ]),
            ),

            ListTile(

              title:Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('you didnot receive the code?',),
              ),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),
                child: GestureDetector(
                  child: Text('Try new code'.toString(),style: TextStyle(color: Colors.blueAccent),),

                ),
              ),
            ),

          ],
        )
        ,
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
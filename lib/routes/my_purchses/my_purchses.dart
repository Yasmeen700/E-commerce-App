import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyPurchases extends StatefulWidget {
  @override
  _MyPurchasesState createState() => _MyPurchasesState();
}

class _MyPurchasesState extends State<MyPurchases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('MY Purchases',style: FontStyles.pageTitle,),
        backgroundColor: GlobalColors.brownColor,
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.shopping_cart_outlined),),
                  title: Column(
                      children: [
                        Text('Total:',style: TextStyle(fontWeight: FontWeight.bold)),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(DateTime.now().toString(), style:TextStyle(color: Colors.grey)),
                        ), ]

                  ),


                ),

              )
          ),
        ],
      ),
    );


  }
}
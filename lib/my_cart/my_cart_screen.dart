import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalColors.whiteColor,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'MyCart',
            style: FontStyles.pageTitle,
          ),
          centerTitle: true,
          backgroundColor: GlobalColors.brownColor,
          iconTheme: IconThemeData(color: GlobalColors.whiteColor),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreensHelper.fromHeight(1),
              vertical: ScreensHelper.fromWidth(4)),
          child: ListView.builder(

              itemCount: 4,
              itemBuilder: (ctx, i) {
                return Card(
                  color: GlobalColors.whiteColor,
                  elevation: 10,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: GlobalColors.brownColor,
                      radius: 30,
                    ),
                    title: Text('price'),
                    subtitle: Text('title'),
                    trailing: Icon(
                      Icons.check_box_outline_blank_sharp,
                      color: GlobalColors.brownColor,
                    ),
                  ),
                );
              }),
        ),
        floatingActionButton: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: 1,
                child: Icon(Icons.delete_outline),
                elevation: 20,
                tooltip: 'delete from cart',
                onPressed: () {
                },
                splashColor: GlobalColors.brownColor,
                hoverColor: GlobalColors.brownColor,
                focusColor: GlobalColors.brownColor,
                foregroundColor: GlobalColors.whiteColor,
                backgroundColor: GlobalColors.brownColor,

              ),
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                heroTag: 2,
                child: Icon(Icons.monetization_on_outlined),
                elevation: 20,
                tooltip: 'delete from cart',
                onPressed: () {
                },
                splashColor: GlobalColors.brownColor,
                hoverColor: GlobalColors.brownColor,
                focusColor: GlobalColors.brownColor,
                foregroundColor: GlobalColors.whiteColor,
                backgroundColor: GlobalColors.brownColor,
              ),
            ),

          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

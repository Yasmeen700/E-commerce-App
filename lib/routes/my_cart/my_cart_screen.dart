import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/cart.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'my_cart_widget.dart';

class MyCart extends StatefulWidget {

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  final List<Product> products =[];
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<Cart>(context);
    return Scaffold(
      backgroundColor: GlobalColors.whiteColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MyCart',
          style: FontStyles.pageTitle,
        ),
        backgroundColor: GlobalColors.brownColor,
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: ScreensHelper.fromHeight(1),
            vertical: ScreensHelper.fromWidth(4)),
        child: Consumer<Cart>(
          builder: (context, cart, child) => ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (ctx, index) {
                return Card(
                  color: GlobalColors.whiteColor,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CheckboxListTile(
                      title: Text(cart.items.values.toList()[index].title),
                      secondary: CircleAvatar(backgroundImage: AssetImage(cart.items.values.toList()[index].image),),
                      controlAffinity: ListTileControlAffinity.trailing,
                      value: _checked,
                      onChanged: (bool value){
                        _checked =! value;
                      },
                    ),
                  ),
                );
              }),
        ),
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
              onPressed: () {},
              splashColor: GlobalColors.brownColor,
              hoverColor: GlobalColors.brownColor,
              focusColor: GlobalColors.brownColor,
              foregroundColor: GlobalColors.whiteColor,
              backgroundColor: GlobalColors.brownColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

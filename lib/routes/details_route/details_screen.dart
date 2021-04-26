import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/cart.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  DetailsScreen({this.product});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List myCartList = [];

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    showAlertDialog(BuildContext context) {
      // set up the buttons
      Widget cancelButton = FlatButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      Widget continueButton = FlatButton(

        child: Text("Add"),
        onPressed: () {
          cart.addItem(widget.product.image, widget.product.price,
              widget.product.title, widget.product.id.toString());
          Navigator.of(context).pop();
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        backgroundColor: GlobalColors.whiteColor,
        title: Text("Alert"),
        content: Text(
            "Would you like to add this product to your cart?"),
        actions: [
          cancelButton,
          continueButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.brownColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.product.id.toString(),
          style: FontStyles.pageTitle,
        ),
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      backgroundColor: GlobalColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                // width: ScreensHelper.width,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.product.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Title :', style: FontStyles.titleDetails)),
                  Expanded(
                    flex: 2,
                    child: Text(widget.product.title,
                        style: FontStyles.descriptionDetails),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child:
                        Text('Description :', style: FontStyles.titleDetails),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      widget.product.description,
                      style: FontStyles.descriptionDetails,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                Expanded(
                    flex: 1,
                    child: Text('Category :', style: FontStyles.titleDetails)),
                Expanded(
                    flex: 2,
                    child: Text('${widget.product.category}',
                        style: FontStyles.descriptionDetails)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text('Price :', style: FontStyles.titleDetails)),
                  Expanded(
                    flex: 2,
                    child: Text('${widget.product.price}',
                        style: FontStyles.descriptionDetails),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_outlined),
        elevation: 20,
        tooltip: 'add to cart',
        onPressed: () {
          showAlertDialog(context);
        },
        splashColor: GlobalColors.brownColor,
        hoverColor: GlobalColors.whiteColor,
        focusColor: GlobalColors.brownColor,
        foregroundColor: GlobalColors.whiteColor,
        backgroundColor: GlobalColors.brownColor,
      ),
    );
  }
}

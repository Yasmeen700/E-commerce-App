import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:ecommerce_mobile_app/screens/my_cart/my_cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(
                widget.product.image,
                fit: BoxFit.cover,
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
                  child: Text('Description :', style: FontStyles.titleDetails),
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
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart_outlined),
        elevation: 20,
        tooltip: 'add to cart',
        onPressed: () {
          myCartList.add(widget.product);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => MyCart(
                product: widget.product,
                myCartList: myCartList,
              ),
            ),
          );
        },
        splashColor: GlobalColors.brownColor,
        hoverColor: GlobalColors.brownColor,
        focusColor: GlobalColors.brownColor,
        foregroundColor: GlobalColors.whiteColor,
        backgroundColor: GlobalColors.brownColor,
      ),
    );
  }
}

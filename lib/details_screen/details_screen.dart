import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;

  DetailsScreen({this.product});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.whiteColor,
        elevation: 0,
        title: Text(widget.product.productName),
      ),
      backgroundColor: GlobalColors.whiteColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Image.asset(
                widget.product.productPhoto,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Title :')),
                Expanded(
                  flex: 2,
                  child: Text(
                      'Lorem ipsum or lipsum as it is sometimes known is dummy text used in laying out print '),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Text(
                      'Description :',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Mon',
                          fontSize: 15),
                    )),
                Expanded(
                  flex: 2,
                  child: Text(
                      'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print,'
                      ' graphic or web designs.'
                      ' The passage is attributed to an unknown typesetter in the 15th century who is'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Expanded(flex: 1, child: Text('Category :')),
              Expanded(flex: 2, child: Text('${widget.product.salePrice}')),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(flex: 1, child: Text('Price :')),
                Expanded(
                  flex: 2,
                  child: Text('${widget.product.salePrice}'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

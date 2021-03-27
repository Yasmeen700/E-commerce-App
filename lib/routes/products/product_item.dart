import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
            height: 175,
            width: 155,
            decoration: BoxDecoration(
              color: GlobalColors.lightBrownColor2,
              borderRadius: BorderRadius.circular(10),
              image: new DecorationImage(
                image: new NetworkImage(product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              product.id.toString(),
              style: TextStyle(
                color: GlobalColors.brownColor,
                fontSize: 15,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '\$ ' + product.price.toString(),
              style: TextStyle(
                color: GlobalColors.brownColor,
                fontSize: 12,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

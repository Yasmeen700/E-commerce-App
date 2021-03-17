import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product.dart';
import 'package:flutter/cupertino.dart';


class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ProductCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 10),
            height: 175,
            width: 155,
            decoration: BoxDecoration(
              color: GlobalColors.lightBrownColor2,
              borderRadius: BorderRadius.circular(10),
              image: new DecorationImage(
                image: new AssetImage(product.productPhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10),
            child: Text(
              product.productName,
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
              '\$ ' + product.salePrice.toString(),
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
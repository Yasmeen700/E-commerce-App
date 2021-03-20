import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:ecommerce_mobile_app/screens/details_screen/details_screen.dart';
import 'package:ecommerce_mobile_app/screens/products_page/product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final List<Product> product;

  ProductGridView({this.product});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.73,
          crossAxisCount: 2,
          mainAxisSpacing: 0.5,
          crossAxisSpacing: 5),
      itemBuilder: (context, index) => GestureDetector(
        child: ProductItem(product[index]),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => DetailsScreen(
                product: product[index],
              ),
            ),
          );
        },
      ),
    );
  }
}

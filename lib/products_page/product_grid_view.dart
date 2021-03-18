import 'package:ecommerce_mobile_app/details_screen/details_screen.dart';
import 'package:ecommerce_mobile_app/model/product.dart';
import 'package:ecommerce_mobile_app/products_page/product_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: EdgeInsets.all(10),
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.73,
          crossAxisCount: 2,
          mainAxisSpacing: 0.5,
          crossAxisSpacing: 5),
      itemBuilder: (context, index) => ProductCard(
        product: items[index],
        id: items[index].id,
        name:items[index].productName,
        price: items[index].salePrice,
        imageUrl: items[index].productPhoto,
        press: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsScreen(product: items[index],)));
        },
      ),
    );
  }
}

List<Product> items = [
  Product(
    id: 1,
    productName: 'Grey Shirt',
    salePrice: 29.99,
    productPhoto: 'assets/images/drawer.jpg',
  ),
  Product(
    id: 2,
    productName: 'Red Shirt',
    salePrice: 29.99,
    productPhoto: 'assets/images/productPhoto.jpg',
  ),
  Product(
    id: 3,
    productName: 'Red Shirt',
    salePrice: 29.99,
    productPhoto: 'assets/images/productPhoto.jpg',
  ),
  Product(
    id: 4,
    productName: 'Red Shirt',
    salePrice: 29.99,
    productPhoto: 'assets/images/productPhoto.jpg',
  ),
];
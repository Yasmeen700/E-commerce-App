import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/util/screen_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElectronicCategory extends StatefulWidget {
  @override
  _ElectronicCategoryState createState() => _ElectronicCategoryState();
}

class _ElectronicCategoryState extends State<ElectronicCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: GlobalColors.whiteColor,
        child: Expanded(
            child: GridView.builder(
                itemCount: _items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.70, crossAxisCount: 2),
                itemBuilder: (context, index) => ProductCard())));
  }
}

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
            padding: EdgeInsets.all(5),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: GlobalColors.lightBrownColor2,
                borderRadius: BorderRadius.circular(10),
                image: new DecorationImage(
                  image: new AssetImage(_items[0].productPhoto),
                  fit: BoxFit.cover,
                )),

            // Image.asset(_items[0].productPhoto,
            // fit: BoxFit.cover,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            child: Text(
              _items[0].productName,
              style: TextStyle(
                color: GlobalColors.brownColor,
                fontSize: 15,
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10),
            child: Text('\$ '+_items[0].salePrice.toString(),
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

class Product {
  int id;
  String productName;
  String productPhoto;
  double salePrice;

  Product({this.id, this.productName, this.productPhoto, this.salePrice});
}

List<Product> _items = [
  Product(
    id: 1,
    productName: 'Red Shirt',
    salePrice: 29.99,
    productPhoto: 'assets/images/productPhoto.jpg',
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
// GridView.count(
// crossAxisCount: 2,
// childAspectRatio: 1.0,
// padding: const EdgeInsets.all(4.0),
// mainAxisSpacing: ScreensHelper.fromHeight(2),
// crossAxisSpacing: ScreensHelper.fromHeight(2),
// children: _items.map((String url) {
// return GridTile(
// // footer:  ,
// child: Image.network(url, fit: BoxFit.cover));
// }).toList()),

import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/screens/details_screen/details_screen.dart';
import 'package:ecommerce_mobile_app/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../product_card_widget.dart';
import '../product_grid_view.dart';

class ElectronicCategory extends StatefulWidget {
  @override
  _ElectronicCategoryState createState() => _ElectronicCategoryState();
}

class _ElectronicCategoryState extends State<ElectronicCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalColors.whiteColor,
      child: ProductGridView(),
    );
  }
}



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

import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../product_grid_view.dart';

class ElectronicCategory extends StatelessWidget {
  final Future<List<Product>> products;

  ElectronicCategory({this.products});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalColors.whiteColor,
      child: FutureBuilder(
        future: products,
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          } else if (snapshot.hasData) {
            return ProductGridView();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

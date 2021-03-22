import 'package:ecommerce_mobile_app/api_manager/rsponse/api_manager.dart';
import 'package:ecommerce_mobile_app/constants/Strings.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/model/product_model.dart';
import 'package:flutter/material.dart';

import '../product_grid_view.dart';

class JeweleryCategory extends StatefulWidget {
  @override
  _JeweleryCategoryState createState() => _JeweleryCategoryState();
}

class _JeweleryCategoryState extends State<JeweleryCategory> {
  Future<List<Product>> _products;
  @override
  void initState() {
    super.initState();

    _products = ApiManager().getProduct(Strings.jeweleryCategoryName);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: GlobalColors.whiteColor,
      child: FutureBuilder(
        future: _products,
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);
          } else if (snapshot.hasData) {
            return ProductGridView(
              products: snapshot.data,
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

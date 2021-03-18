import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/material.dart';

import '../product_grid_view.dart';

class WomenCategory extends StatefulWidget {
  @override
  _WomenCategoryState createState() => _WomenCategoryState();
}

class _WomenCategoryState extends State<WomenCategory> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: GlobalColors.whiteColor,
      child: ProductGridView(),
    );
  }
}

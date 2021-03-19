import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyCartWidget extends StatelessWidget {
  final String id;
  // final String productId;
  final double price;
  // final int quantity;
  final String title;
  final String photo;

  MyCartWidget({
    this.id,
    this.price,
    this.title,
    // this.productId,
    // this.quantity,
    this.photo
  });

  @override
  Widget build(BuildContext context) {
    // final cart= Provider.of<Cart>(context,listen: false);
    return Card(
      color: GlobalColors.whiteColor,
      elevation: 10,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: GlobalColors.brownColor,
          radius: 30,
          backgroundImage: AssetImage(photo),
        ),
        title: Text('$price'),
        subtitle: Text(title),
        trailing: Icon(
          Icons.check_box_outline_blank_sharp,
          color: GlobalColors.brownColor,
        ),
      ),
    );
  }
}

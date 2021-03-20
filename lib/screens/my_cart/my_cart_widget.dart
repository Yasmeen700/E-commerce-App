import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCartWidget extends StatefulWidget {
  final String id;
  final double price;
  final String title;
  final String photo;
  bool isChecked = false;

  MyCartWidget({this.id, this.price, this.title, this.photo, this.isChecked});

  @override
  _MyCartWidgetState createState() => _MyCartWidgetState();
}

class _MyCartWidgetState extends State<MyCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalColors.whiteColor,
      elevation: 10,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: GlobalColors.brownColor,
          radius: 30,
          backgroundImage: AssetImage(widget.photo),
        ),
        title: Text('${widget.price}'),
        subtitle: Text(widget.title),
        trailing: IconButton(
          onPressed: () {
            setState(() {
              widget.isChecked = !widget.isChecked;
            });
          },
          icon: widget.isChecked
              ? Icon(
                  Icons.check_box_outline_blank_sharp,
                  color: GlobalColors.brownColor,
                )
              : Icon(
                  Icons.check_box,
                  color: GlobalColors.brownColor,
                ),
        ),
      ),
    );
  }
}

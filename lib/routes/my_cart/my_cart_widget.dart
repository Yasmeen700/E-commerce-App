// import 'package:ecommerce_mobile_app/constants/global_colors.dart';
// import 'package:ecommerce_mobile_app/model/product_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// class MyCartWidget extends StatefulWidget {
//   final Product product;
//
//
//   MyCartWidget({this.product});
//
//   @override
//   _MyCartWidgetState createState() => _MyCartWidgetState();
// }
//
// class _MyCartWidgetState extends State<MyCartWidget> {
//   bool _checked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: GlobalColors.whiteColor,
//       elevation: 10,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: CheckboxListTile(
//           title: Text(widget.product.title),
//           secondary: CircleAvatar(backgroundImage: AssetImage(widget.product.image),),
//           controlAffinity: ListTileControlAffinity.trailing,
//           value: _checked,
//           onChanged: (bool value){
//             _checked =! value;
//           },
//         ),
//       ),
//     );
//   }
// }

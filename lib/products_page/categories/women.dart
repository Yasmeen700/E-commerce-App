import 'package:flutter/material.dart';

class WomenCategory extends StatefulWidget {
  @override
  _WomenCategoryState createState() => _WomenCategoryState();
}

class _WomenCategoryState extends State<WomenCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,

      child:Center(child:Text('Women',style: TextStyle(fontSize: 40),), ) ,
    );
  }
}

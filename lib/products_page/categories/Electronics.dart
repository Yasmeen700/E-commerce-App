import 'package:flutter/material.dart';

class ElectronicCategory extends StatefulWidget {
  @override
  _ElectronicCategoryState createState() => _ElectronicCategoryState();
}

class _ElectronicCategoryState extends State<ElectronicCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,

      child:Center(child:Text('Electronics',style: TextStyle(fontSize: 40),), ) ,
    );
  }
}


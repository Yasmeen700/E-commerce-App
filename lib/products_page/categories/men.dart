import 'package:flutter/material.dart';

class MenCategory extends StatefulWidget {
  @override
  _MenCategoryState createState() => _MenCategoryState();
}

class _MenCategoryState extends State<MenCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,

      child:Center(child:Text('Men',style: TextStyle(fontSize: 40),), ) ,
    );
  }
}

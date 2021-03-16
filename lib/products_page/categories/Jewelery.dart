import 'package:flutter/material.dart';

class JeweleryCategory extends StatefulWidget {
  @override
  _JeweleryCategoryState createState() => _JeweleryCategoryState();
}

class _JeweleryCategoryState extends State<JeweleryCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          'Jeweiery',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

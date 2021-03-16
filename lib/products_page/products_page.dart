import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:ecommerce_mobile_app/products_page/categories/Electronics.dart';
import 'package:ecommerce_mobile_app/products_page/categories/men.dart';
import 'package:ecommerce_mobile_app/products_page/categories/women.dart';
import 'package:flutter/material.dart';

import 'categories/Jewelery.dart';

class ProductsScreen extends StatefulWidget {
  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  int currentIndex = 0;
  int index = 0;
  List choices;

  void initState() {
    super.initState();

    choices = [
      'Electronics',
      'Jewelery',
      'Men Clothing',
      'Women Clothing',
    ];
    _tabController = TabController(length: choices.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: GlobalColors.brownColor,
        title: Text(
          'Products by categories',
          style: TextStyle(
            color: GlobalColors.whiteColor,
            fontFamily: 'Mon',
          ),
        ),
        bottom: TabBar(
          isScrollable: true,
          tabs: choices
              .map((e) => Tab(
                      child: Text(
                    e,
                    style: TextStyle(
                        fontFamily: 'kanit', color: GlobalColors.whiteColor),
                  )))
              .toList(),
          controller: _tabController,
          indicatorColor: GlobalColors.whiteColor,
        ),
        iconTheme: IconThemeData(color: GlobalColors.whiteColor),
      ),
      drawer: _drawer,
      body: TabBarView(
        controller: _tabController,
        children: [
          ElectronicCategory(),
          JeweleryCategory(),
          MenCategory(),
          WomenCategory(),

        ],
      ),
    );
  }
}

Drawer _drawer = Drawer(

  child: Column(
    children: <Widget>[
      SizedBox(
        height: 30,
      ),
      DrawerHeader(
        child: Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/drawer.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
// Image.asset(
//   "assets/images/drawer.jpg",
//   fit: BoxFit.cover,
//   width: MediaQuery.of(context).size.width,
//   height: MediaQuery.of(context).size.height,
// ),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      ListTile(
        leading: Icon(
          Icons.settings,
          color: GlobalColors.brownColor,
        ),
        title: Text(
          'Settings',
          style: TextStyle(
              color: GlobalColors.brownColor,
              fontFamily: "Mon",
              fontWeight: FontWeight.w600),
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 5,
      ),
      ListTile(
        leading: Icon(
          Icons.shopping_cart_outlined,
          color: GlobalColors.brownColor,
        ),
        title: Text(
          'My Cart',
          style: TextStyle(
              color: GlobalColors.brownColor,
              fontFamily: "Mon",
              fontWeight: FontWeight.w600),
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 5,
      ),
      ListTile(
        leading: Icon(
          Icons.account_balance_wallet_outlined,
          color: GlobalColors.brownColor,
        ),
        title: Text(
          'My Purchases',
          style: TextStyle(
              color: GlobalColors.brownColor,
              fontFamily: "Mon",
              fontWeight: FontWeight.w600),
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 5,
      ),
      ListTile(
        leading: Icon(
          Icons.list,
          color: GlobalColors.brownColor,
        ),
        title: Text(
          'My Activity',
          style: TextStyle(
              color: GlobalColors.brownColor,
              fontFamily: "Mon",
              fontWeight: FontWeight.w600),
        ),
        onTap: () {},
      ),
      SizedBox(
        height: 5,
      ),
      ListTile(
        leading: Icon(
          Icons.new_releases_outlined,
          color: GlobalColors.brownColor,
        ),
        title: Text(
          'About Us',
          style: TextStyle(
              color: GlobalColors.brownColor,
              fontFamily: "Mon",
              fontWeight: FontWeight.w600),
        ),
        onTap: () {},
      ),
    ],
  ),
);

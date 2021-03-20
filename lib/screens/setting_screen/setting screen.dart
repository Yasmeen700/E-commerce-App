import 'package:ecommerce_mobile_app/constants/font_style.dart';
import 'package:ecommerce_mobile_app/constants/global_colors.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: GlobalColors.brownColor,
        // leading: Icon(Icons.arrow_back_outlined),
        title: Text(
          'Settings',
          style: FontStyles.pageTitle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: Text(
                  'GENERAL SETTING',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        child: ListTile(
                          leading: Icon(Icons.lock, color: Colors.black),
                          title: Text('Change password'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: ListTile(
                          leading: Icon(
                            Icons.language_sharp,
                            color: Colors.black,
                          ),
                          title: Text('Change language'),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

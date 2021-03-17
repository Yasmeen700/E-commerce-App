import 'package:flutter/material.dart';
class setting_screen extends StatefulWidget {
  @override
  _setting_screenState createState() => _setting_screenState();
}

class _setting_screenState extends State<setting_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(Icons.arrow_back_outlined),
        title: Text('Settings',),


      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children:[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 4),

                child: Text('GENERAL SETTING' ,style: TextStyle(fontWeight: FontWeight.bold),


                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        child: ListTile(
                          leading: Icon(Icons.lock, color:Colors.black),
                          title: Text('Change password'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),

                        onTap: (){},),
                      InkWell(

                        child: ListTile(

                          leading: Icon(Icons.language_sharp, color: Colors.black),
                          title: Text('Change language'),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),

                        onTap: (){},)

                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }}



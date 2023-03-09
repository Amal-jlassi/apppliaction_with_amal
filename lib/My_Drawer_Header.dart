import 'package:apppliaction_with_amal/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HomePage.dart';

import 'package:apppliaction_with_amal/FacePage.dart';

 class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  MyHeaderDrawerState createState() => MyHeaderDrawerState();
}
  @override



  class MyHeaderDrawerState extends State<MyHeaderDrawer>{
  @override
  Widget build(BuildContext context){
    return Container(
      color:Color(0xff5dc9b7),
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top:20.0),
      child:  Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom:10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:DecorationImage(
                image:AssetImage('lib/icons/logo1.png'),
              ),
            ),
          ),
          Text('Home',style: TextStyle(color: Colors.white, fontSize: 20),),
          Text(
            'devWork@gmail.com',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      )
    );
  }
}

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../viewes/My_Drawer_Header.dart';
import '../viewes/DashboardPage.dart';
import '../viewes/ContactsPage.dart';
import '../viewes/SettingsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body :
      ListView(

        children: [
          Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            height:200,

              color: Colors. deepPurple[200],


          ),
          ),
          Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            color: Colors. deepPurple[200],
          ),
          ),
         Padding(padding: const EdgeInsets.all(10.0),
          child: Container(
           height: 200,
           color: Colors. deepPurple[200],
           ),
            ),
        Padding(padding: const EdgeInsets.all(10.0),
         child: Container(
       height: 200,
         color: Colors. deepPurple[200],
         ),
         ),
        ],
      )
    );

  }

}
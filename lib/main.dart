import 'package:apppliaction_with_amal/Authentication.dart';
import 'package:apppliaction_with_amal/welcom.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'Developer.dart';
import 'dart:typed_data';
import 'welcom.dart';
import 'Company.dart';
import 'Create.dart';
import 'Checked.dart';
import 'AboutUs.dart';
import'Authentication.dart';
import'auth_path.dart';


void main() => runApp(const App());

class App extends StatelessWidget {


  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       debugShowCheckedModeBanner: false,
                    initialRoute: '/',
                    routes: {
                     '/': (context) => const welcom(),
                     '/second': (context) => const Login(),
                    '/home': (context)=> const Company(),
                    '//':(context)=>   Create(),
                   },
    );
  }
}
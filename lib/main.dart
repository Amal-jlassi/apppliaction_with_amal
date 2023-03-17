import 'package:apppliaction_with_amal/Authentication.dart';
import 'package:apppliaction_with_amal/DashboardPage.dart';
import 'package:apppliaction_with_amal/FacePage.dart';
import 'package:apppliaction_with_amal/ForgetPasswordPage.dart';
import 'package:apppliaction_with_amal/MyApp.dart';
import 'package:apppliaction_with_amal/ProfilePage.dart';
import 'package:apppliaction_with_amal/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'WelcomeScreen.dart';
import 'Company.dart';
import 'Create.dart';
import 'Checked.dart';
import 'AboutUs.dart';
import'Authentication.dart';
import'auth_path.dart';
import 'HomePage.dart';
import 'package:apppliaction_with_amal/My_Drawer_Header.dart';
import 'Home.dart';
import 'package:apppliaction_with_amal/Login_screen.dart';
import 'RecherchePage.dart';
import 'ProfilePage.dart';
import 'DashboardPage.dart';
import 'SettingsPage.dart';
import 'package:apppliaction_with_amal/RoundedButtonSignup.dart';
import 'SignupPage.dart';
import 'UserPage.dart';
import 'auth_path.dart';
import 'FacePage.dart';
import 'Languages_screen.dart';
import 'CompanyPage.dart';
import 'CondidatPage.dart';
void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const WelcomeScreen(),
      //   '/second': (context) => const LoginScreen(),
      //   '/home': (context)=> const HomePage(),
      //   '/aboute':(context) => const AboutUs(),
      //   '/dash':(context) => DashboardPage(),
      //   '/profile':(context) => ProfilePage(),
      //   '/sett':(context) => const SettingsOnePage(),
      //   '/Signup':(context) => const SignupPage(),
      //   '/forg':(context) => const ForgotPasswordPage(),

     home: WelcomeScreen()

       );
  }
}
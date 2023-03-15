import 'package:apppliaction_with_amal/Authentication.dart';
import 'package:apppliaction_with_amal/DashboardPage.dart';
import 'package:apppliaction_with_amal/FacePage.dart';
import 'package:apppliaction_with_amal/ForgetPasswordPage.dart';
import 'package:apppliaction_with_amal/MyApp.dart';
import 'package:apppliaction_with_amal/ProfilePage.dart';
import 'package:apppliaction_with_amal/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'Developer.dart';
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
import 'WelcomeScreen.dart';
import 'package:apppliaction_with_amal/RoundedButtonSignup.dart';
import 'SignupPage.dart';
import 'UserPage.dart';
import 'auth_path.dart';
import 'FacePage.dart';
import 'CVGeneratorScreen.dart';
import 'Languages_screen.dart';


void main() => runApp(const App());

class App extends StatelessWidget {


  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
       // debugShowCheckedModeBanner: false,
           //       initialRoute: '/',
             //     routes: {
              //      '/': (context) => const welcom(),
             //       '/second': (context) => LoginScreen(),
             //       '/home': (context) =>  HomePage(),
            //        '/aboute': (context) => AboutUs(),
            //        '/dash': (context) => DashboardPage(),
            //        '/profile': (context) => ProfilePage(),

                    //'//': (context) => Create(),
                //  }
        home: LoginScreen()

    );
  }
}
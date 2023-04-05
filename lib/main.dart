import 'package:apppliaction_with_amal/screens/Authentication.dart';
import 'package:apppliaction_with_amal/viewes/DashboardPage.dart';
import 'package:apppliaction_with_amal/screens/FacePage.dart';
import 'package:apppliaction_with_amal/viewes/ForgetPasswordPage.dart';
import 'package:apppliaction_with_amal/screens/MyApp.dart';
import 'package:apppliaction_with_amal/viewes/ProfilePage.dart';
import 'package:apppliaction_with_amal/viewes/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:typed_data';
import 'viewes/WelcomeScreen.dart';
import 'screens/Company.dart';
import 'screens/Create.dart';
import 'screens/Checked.dart';
import 'viewes/AboutUs.dart';
import 'screens/Authentication.dart';
import 'screens/auth_path.dart';
import 'viewes/HomePage.dart';
import 'package:apppliaction_with_amal/viewes/My_Drawer_Header.dart';
import 'screens/Home.dart';
import 'package:apppliaction_with_amal/viewes/Login_screen.dart';
import 'viewes/RecherchePage.dart';
import 'viewes/ProfilePage.dart';
import 'viewes/DashboardPage.dart';
import 'viewes/SettingsPage.dart';
import 'package:apppliaction_with_amal/viewes/RoundedButtonSignup.dart';
import 'viewes/SignupPage.dart';
import 'viewes/UserPage.dart';
import 'screens/auth_path.dart';
import 'screens/FacePage.dart';
import 'screens/Languages_screen.dart';
import 'viewes/CompanyPage.dart';
import 'viewes/CondidatPage.dart';
import 'main.data.dart';

void main() => runApp(
      ProviderScope(
        child: App(),
        overrides: [configureRepositoryLocalStorage()],
      ),
    );

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/second': (context) => const LoginScreen(),
          '/home': (context) => const HomePage(),
          '/aboute': (context) => const AboutUs(),
          '/dash': (context) => DashboardPage(),
          '/profile': (context) => ProfilePage(),
          '/sett': (context) => const SettingsOnePage(),
          '/Signup': (context) => const SignupPage(),
          '/forg': (context) => const ForgotPasswordPage(),
          '/search': (context) => const RecherchePage(),
          '/dev': (context) => const CondidatPage(),
          '/comp': (context) => const CompanyPage(),
          '/chek': (context) => const UserPage(),
        });

  }
}

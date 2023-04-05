import 'package:flutter/material.dart';

import 'package:apppliaction_with_amal/viewes/login_signup_btn.dart';

import 'package:apppliaction_with_amal/screens/background.dart';
import 'roundedButton.dart';
import 'package:apppliaction_with_amal/viewes/RoundedButtonSignup.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5dc9b7),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 500,
                  width: 1000,
                  //decoration: BoxDecoration(
              //                     shape: BoxShape.circle,
              //                     image: DecorationImage(
              //                       image: AssetImage('img/img333.jpg'),
              //                     ),
              //                   ),
                           ),
                Padding(
                  padding: const  EdgeInsets. only(top: 250.0),
                  child: Container(
                    width: 500, //double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Welcome!",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'OpenSans',
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 30),

                        Form(
                          child: Column(
                            children: [
                              RoundedButton(text: 'LOGIN', press: () {
                                Navigator.pushNamed(context, '/second');
                              }),
                              RoundedButtonSignup(text: 'SIGNUP',
                                  press: () {
                                Navigator.pushNamed(context, '/Signup');
                              }),
                              const SizedBox(
                                height: 10,
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
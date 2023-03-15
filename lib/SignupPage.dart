import 'package:apppliaction_with_amal/RoundedButtonSignup.dart';
import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/RoundedIcon.dart';
import 'package:apppliaction_with_amal/rounded_input_filed.dart';
import 'package:apppliaction_with_amal/text_filed_container.dart';
import 'package:apppliaction_with_amal/rounded_password_field.dart';
import 'package:apppliaction_with_amal/roundedButton.dart';
import 'Create.dart ' ;
import 'dart:convert';
class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 700,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    image:DecorationImage(
                      image:AssetImage('img/img6666.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Create Account ",
                          style: TextStyle(
                              color: Colors.black45,
                              fontFamily: 'OpenSans',
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const  RoundedInputField(
                                  hintText: "Name", icon: Icons.person  ),
                              const  RoundedInputField(
                                  hintText: "Email", icon: Icons.email  ),
                              const  RoundedInputField(
                                  hintText: "Phone", icon: Icons.phone  ),
                             const   RoundedInputField(
                                  hintText: "Country", icon: Icons.house  ),
                              RoundedPasswordField (  ),

                              RoundedButtonSignup(text: 'SIGN UP', press: () {Navigator.pushNamed(context, '/home');
                              }),
                              const SizedBox(
                                height: 10,
                              ),

                              const SizedBox(
                                height: 20,
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


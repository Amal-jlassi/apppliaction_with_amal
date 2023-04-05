
import 'package:apppliaction_with_amal/viewes/RoundedButtonSignup.dart';
import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/viewes/RoundedIcon.dart';
import 'package:apppliaction_with_amal/viewes/text_filed_container_Con.dart';
import 'package:apppliaction_with_amal/viewes/rounded_input_field_Com.dart';
import 'package:apppliaction_with_amal/viewes/rounded_password_field.dart';
import 'package:apppliaction_with_amal/viewes/roundedButton.dart';

import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';



class CondidatPage extends StatelessWidget {
  const CondidatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:Color(0xff229C9C),

        body: SingleChildScrollView(
          child: Column(
              children: [
                Stack(
                  children: [



                    ClipPath(
                      clipper: DrawClip2(),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.8,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xffffff), Color(0xffCFF4D2)],
                                begin: Alignment.bottomCenter,
                                end: Alignment.bottomRight)),
                      ),
                    ),
                    ClipPath(
                      clipper: DrawClip(),
                      child: Container(
                        width: size.width,
                        height: size.height * 0.8,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xff329C9C), Color(0xffCFF4D2)],

                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
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
                              "New Developer  ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Form(
                              child: Column(
                                children: [
                                  const  RoundedInputField(
                                      hintText: "Name",  icon: Icons.person  ),
                                  const  RoundedInputField(
                                      hintText: "Email", icon: Icons.email  ),
                                  const  RoundedInputField(
                                      hintText: "Phone",  icon: Icons.phone  ),
                                  const   RoundedInputField(
                                      hintText: "Country", icon: Icons.house  ),
                                  const   RoundedInputField(
                                      hintText: "Framework ", icon: Icons.laptop),
                                  const   RoundedInputField(
                                      hintText: "CV   ", icon: Icons.document_scanner ),

                                  RoundedButtonSignup(text: 'Add', press: () {Navigator.pushNamed(context, '/home');
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
                )

              ]
          ),

        ),
      ),
    );
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.8);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.80);
    path.cubicTo(size.width / 4, size.height, 3 * size.width / 4,
        size.height / 2, size.width, size.height * 0.9);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/RoundedIcon.dart';
import 'package:apppliaction_with_amal/rounded_input_filed.dart';
import 'package:apppliaction_with_amal/text_filed_container.dart';
import 'package:apppliaction_with_amal/rounded_password_field.dart';
import 'package:apppliaction_with_amal/roundedButton.dart';
import 'Create.dart ' ;
import 'dart:convert';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(backgroundColor: Color(0xff30BFBF),
          items: [

            GestureDetector(onTap : (){ Navigator.pushNamed(context, '/home');}, child: Icon(Icons. home)),
            GestureDetector (onTap : (){ Navigator.pushNamed(context, '/second');}, child :Icon(Icons.add)),
            GestureDetector (onTap : () { Navigator.pushNamed(context, '/home');}, child :Icon(Icons.search)),
          ],
        ) ,
        backgroundColor: Colors.white,
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: 230,
                  width: 410,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:DecorationImage(
                      image:AssetImage('img/img702.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 420.0),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        const SizedBox(height: 20),
                        const Text(
                          "User Connect ?",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height:20),
                        Form(
                          child: Column(
                            children: [

                              RoundedButton(text: 'Developer ', press: () {Navigator.pushNamed(context, '/home');
                              }),

                              RoundedButton(text: 'Company ', press: () {Navigator.pushNamed(context, '/home');
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


import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/RoundedIcon.dart';
import 'package:apppliaction_with_amal/rounded_input_filed.dart';
import 'package:apppliaction_with_amal/text_filed_container.dart';
import 'package:apppliaction_with_amal/rounded_password_field.dart';
import 'package:apppliaction_with_amal/roundedButton.dart';
import 'Create.dart ' ;
import 'dart:convert';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                height: 350,
                width: 950,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage('img/img8787.jpg'),
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 320.0),
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
                        const SizedBox(
                          height: 15,
                        ),
                        iconButton(context),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Or use your email account",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'OpenSans',
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        Form(
                          child: Column(
                            children: [
                              const RoundedInputField(
                                  hintText: "Email", icon: Icons.email  ),
                               RoundedPasswordField (  ),
                              TextButton(
                                onPressed: () {  Navigator.pushNamed(context, '/forg');},
                                child:Text(
                                  'Forget Password',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              RoundedButton(text: 'LOGIN', press: () {Navigator.pushNamed(context, '/home');
                              }),
                              const SizedBox(
                                height: 10,
                              ),

                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                              onPressed: () {  Navigator.pushNamed(context, '/Signup');},
                              child:Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                              const SizedBox(height: 20,)
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


iconButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const [
      RoundedIcon(imageUrl: "img/img102.jpg"),
      SizedBox(
        width: 20,
      ),
      RoundedIcon(imageUrl: "img/img101.png"),
      SizedBox(
        width: 20,
      ),

    ],
  );
}
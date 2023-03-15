import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import'rounded_input_filed.dart';
import 'roundedButton.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class RecherchePage extends StatelessWidget {
  const RecherchePage({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return SafeArea(
    child: Scaffold(
      bottomNavigationBar: CurvedNavigationBar(backgroundColor: Color(0xff33E787),
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
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image:AssetImage('img/img333.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 320.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),

                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Search about Job ",
                        style: TextStyle(
                            color: Colors.black45,
                            fontFamily: 'OpenSans',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),

                      Form(
                        child: Column(
                          children: [
                            const SizedBox(height: 27),
                            const RoundedInputField(
                                hintText: "JOB", icon: Icons.work_outline),
                            const RoundedInputField(
                                hintText: "FRAMEWORK", icon: Icons.laptop),

                            RoundedButton(text: 'SEARCH', press: () {}),
                            const SizedBox(
                              height: 40,
                            ),

                            const SizedBox(
                              height: 20,
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

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class welcom extends StatefulWidget {
  const welcom({super.key});

  @override
  welcomState createState() => welcomState();

}
class welcomState extends State<welcom>{
  @override
  double initial=0.0;
  void update(){
    Timer.periodic(const Duration(milliseconds :100) ,(Timer){
      setState(() {
        initial= initial+0.01;
      });
    });
  }
  Widget step(){
    return Column(
      children: const [
        Text(
            "go to login"
        ),
        SizedBox(height: 20.0,)
      ],
    );
  }
  Widget build (BuildContext context){
    update();
    height: MediaQuery.of (context).size.height;
    width: MediaQuery.of(context).size.height;

    return initWidget();
  }
  Widget initWidget() {
    return Scaffold(


      body:
      Stack(
        children: [


          Container(

            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/img30.jpg"),

                  fit: BoxFit.cover
              ),

            ),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[


                Center(

                  child: CircularProgressIndicator(

                    backgroundColor: Colors.purpleAccent,
                    valueColor: const AlwaysStoppedAnimation(Colors.white30),
                    value: initial,
                    strokeWidth: 10.0,

                  ),
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/second');
                      }, child: const Text(
                    'Dev-Work',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                    ,)

                  ),

                ),
              ],


            ),

          ),

        ],
      ),
    );
  }
}
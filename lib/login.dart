import 'dart:convert';

import 'package:apppliaction_with_amal/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();

}
class _LoginState extends State<Login>{




  bool isRemenberMe= false;
  bool _isSecurePassword = true ;
  Widget _emailField(){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        Container(

          alignment: Alignment.centerLeft,

          decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
          height: 70,
          child: TextFormField(
            keyboardType:TextInputType.emailAddress,
            style: const TextStyle(
                color: Colors.black
            ),
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xffb784a7),
                ),
                hintText:'Email',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }
  Widget buildPassword(){


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [

        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),

              boxShadow: [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0, 2)
                )
              ]


          ),
height: 70,
child: TextFormField(
obscureText: true,
style: const TextStyle(
color: Colors.black
),
decoration: const InputDecoration(
border: InputBorder.none,
contentPadding: EdgeInsets.only(top: 14),
  suffixIcon:
  Icon(

    Icons.visibility_off,
  color: Color(0xffb784a7),
   ),
  prefixIcon: Icon(
Icons.lock,
color: Color(0xffb784a7),
),
hintText:'Password',
hintStyle: TextStyle(
color: Colors.black38
),

            ),
          ),
        )

      ],
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children:<Widget>[
          Theme(
            data:ThemeData(unselectedWidgetColor: Colors.white ),
            child: Checkbox(

                value: isRemenberMe,
                checkColor: Colors.black,
                activeColor: Colors.black,
                onChanged: (value){
                  setState(() {
                    isRemenberMe= value!;
                  });
                }),
          ),
          const Text(
            'Remember me',
            style:TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
  Widget buildSignUpBtn(){
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          RichText(
            text:const TextSpan(
                children: [
                  TextSpan (text:"Don\'t have an Account ?  ",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                ]
            ),
          ),
          TextButton(
            onPressed: () {  Navigator.pushNamed(context, '//');},
            child:Text(
              'Create Account',
              style: TextStyle(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]
    );
  }
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width : 150,
      height: 100,
      child: ElevatedButton(
          onPressed:() {
            print("Login Pressed");
            Navigator.pushNamed(context, '/home');
          },
          style: ElevatedButton.styleFrom(
            primary:  Colors.white70,

           // side: const BorderSide(color: Colors.white54, width: 5),
          ),
          child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
backgroundColor:Colors.white70,
      resizeToAvoidBottomInset: true,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child:Stack(

              children:<Widget>[


                  Container(
                    margin: EdgeInsets.all(10.0),
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:DecorationImage(
                        image:AssetImage('lib/icons/logo1.png'),
                      ),
                    ),

                  //height: double.infinity,
          //           width : double.infinity

                  //decoration:const BoxDecoration(
                  //
                  //                      image: DecorationImage(
                  //                         image: AssetImage("img/img21.jpg"),
                  //                         fit: BoxFit.cover
                  //                     ),
                  //
                  //             ),



                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      const Text(
                        'Sign Up',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),


                      const SizedBox(height:100),
                      _emailField(),
                      const SizedBox(height: 50),

                      buildPassword() ,
                      const SizedBox(height: 30),
                      buildRememberCb(),
                      const SizedBox(height: 30),
                      buildLoginBtn(),
                      buildSignUpBtn(),
                      const SizedBox(height: 110),

                    ],
                  ),

                ),

              ],
            ),
          ),
        )
    );
  }
}
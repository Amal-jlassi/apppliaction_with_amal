import 'dart:convert';

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
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.white70,
              fontSize:27,
              fontWeight: FontWeight.bold
          ),
        ),

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
          height: 60,
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
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.white70,
              fontSize:27,
              fontWeight: FontWeight.bold
          ),
        ),

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
height: 60,
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
                activeColor: Colors.white,
                onChanged: (value){
                  setState(() {
                    isRemenberMe= value!;
                  });
                }),
          ),
          const Text(
            'Remember me',
            style:TextStyle(
              color: Colors.white,
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
                  TextSpan (text:"don\'t have an Account ?  ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
                fontSize: 20,
                color: Colors.white,
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
            primary:  Color(0xffb784a7),

           // side: const BorderSide(color: Colors.white54, width: 5),
          ),
          child: const Text(
            'login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )
      ),
    );
  }
  Widget buildNext() {
    return Column(
        children:[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin:  const EdgeInsets.only(left:80.0, right:10.0),

                  alignment: Alignment.centerLeft,
                  child:  TextButton(onPressed: (){Navigator.pop(context); },
                      child:const Icon(Icons.dashboard_customize_rounded,color: Colors.white,size: 50,) )
              ),
              Container(
                  margin:  const EdgeInsets.only(left:10.0, right:10.0),

                  child: TextButton(onPressed: (){Navigator.pop(context); },
                      child:const Icon(Icons.home,color: Colors.white,size: 50,)
                  )   ),
              Container(
                margin:  const EdgeInsets.only(left: 20.0, right:80.0),
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: (){Navigator.pushNamed(context,'/home');
                },
                    child:const Icon(Icons.navigate_next,color: Colors.white,size: 50,)
                ),
              ),
            ],),]);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child:Stack(
              children:<Widget>[
                Container(
                  height: double.infinity,
                  width : double.infinity,
                  decoration:const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/img30.jpg"),
                        fit: BoxFit.cover
                    ),

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign Up',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height:30),
                      _emailField(),
                      const SizedBox(height: 30),

                      buildPassword() ,
                      const SizedBox(height: 20),
                      buildRememberCb(),
                      const SizedBox(height: 30),
                      buildLoginBtn(),
                      buildSignUpBtn(),
                      const SizedBox(height: 110),
                      buildNext(),
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
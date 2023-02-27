import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  AuthentificationState createState() => AuthentificationState();

}
class AuthentificationState extends State<Authentification> {
  bool _isSecurePassword = true;

  Widget buildName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Name',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 27,
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
            keyboardType: TextInputType.emailAddress,
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
                hintText: 'Name',
                hintStyle: TextStyle(
                    color: Colors.black38
                )

            ),
          ),
        )

      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.white70,
              fontSize: 27,
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
              hintText: 'Password',
              hintStyle: TextStyle(
                  color: Colors.black38
              ),

            ),
          ),
        )

      ],
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

          },
          style: ElevatedButton.styleFrom(
            primary:  Color(0xffb784a7),

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
                      'Authentification ',
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height:30),
                    buildName(),
                    const SizedBox(height: 30),
                    buildPassword() ,
                    const SizedBox(height: 20),
                    buildLoginBtn(),

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



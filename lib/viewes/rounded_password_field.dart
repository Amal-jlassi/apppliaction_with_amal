import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/viewes/Login_screen.dart';
import'package:apppliaction_with_amal/viewes/text_filed_container.dart';
import 'package:apppliaction_with_amal/viewes/rounded_input_filed.dart';

class RoundedPasswordField extends StatelessWidget {
  bool _isSecurePassword= true ;
   RoundedPasswordField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: _isSecurePassword,

        decoration:  InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.white
            ),
            hintText: "Password",
            hintStyle:  TextStyle(fontFamily: 'OpenSans', color:Colors.white),
            suffixIcon:IconButton(
               onPressed: () {

                   _isSecurePassword = !_isSecurePassword;
               },
              icon: _isSecurePassword ? Icon(Icons.visibility_off,): Icon(Icons.visibility,), ),


            border: InputBorder.none),
      ),
    );
  }
}
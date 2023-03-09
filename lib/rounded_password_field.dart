import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/Login_screen.dart';
import'package:apppliaction_with_amal/text_filed_container.dart';
import 'package:apppliaction_with_amal/rounded_input_filed.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,

        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: Colors.green
            ),
            hintText: "Password",
            hintStyle:  TextStyle(fontFamily: 'OpenSans'),
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.green
            ),
            border: InputBorder.none),
      ),
    );
  }
}
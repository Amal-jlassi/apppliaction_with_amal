import 'package:flutter/material.dart';
import 'package:apppliaction_with_amal/Login_screen.dart';
import 'package:apppliaction_with_amal/text_filed_container.dart';
import 'SignupPage.dart';

class RoundedInputField extends StatelessWidget {

  const RoundedInputField({Key? key, this.hintText, this.icon = Icons.person})
      : super(key: key);
  final String? hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
  return TextFieldContainer(
  child: TextFormField(

  decoration: InputDecoration(
  icon: Icon(
     icon,
     color: Colors.white,
  ),
  hintText: hintText,
  hintStyle: const TextStyle(fontFamily: 'OpenSans' , color: Colors.white),
  border: InputBorder.none),
  ),
  );
  }
  }
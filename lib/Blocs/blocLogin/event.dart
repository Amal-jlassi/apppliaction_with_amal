import 'package:flutter/material.dart';

class LoginEvents {}

class LoginEventStart extends LoginEvents {
  late TextEditingController email, password;

  late GlobalKey<FormState> formKey;

  Map<String, dynamic> toJson() =>
      {
        "email": email.text,
        "password": password.text,
      };

  LoginEventStart() {
    formKey = GlobalKey();
    email = TextEditingController();
    password = TextEditingController();
  }
}
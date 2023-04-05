import 'package:flutter/material.dart';

class RegisterEvents {}

class RegisterEventStart extends RegisterEvents {
  late TextEditingController name,email, phone, country ,password;


  late GlobalKey<FormState> formKey;

  Map<String, dynamic> toJson() => {
    "name": name.text,
    "email": email.text,
    "phone":phone.text,
    "country":country.text,
    "password": password.text,

  };

  RegisterEventStart() {
    formKey = GlobalKey();
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    country = TextEditingController();
    password = TextEditingController();

  }
}
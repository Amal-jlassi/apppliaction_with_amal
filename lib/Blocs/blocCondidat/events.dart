import 'package:flutter/material.dart';

class CondidatEvents {}

class CondidatEventStart extends CondidatEvents {
  late TextEditingController name,email, phone, country , framework ,CV;

  late GlobalKey<FormState> formKey;

  Map<String, dynamic> toJson() =>
      {
        "name": name.text,
        "email": email.text,
        "phone":phone.text,
        "country":country.text,
        "framework": framework.text,
        "CV": CV.text,

      };

  CondidatEventStart() {
    formKey = GlobalKey();
    name = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    country = TextEditingController();
    framework = TextEditingController();
    CV = TextEditingController();

  }
}
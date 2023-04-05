import 'package:flutter/material.dart';

class CompanyEvents {}

class CompanyEventStart extends CompanyEvents {
  late TextEditingController name, email, phone, country , job ,framework , experience ;

  late GlobalKey<FormState> formKey;

  Map<String, dynamic> toJson() =>
      {
        "name": name.text,
        "email": email.text,
        "phone":phone.text,
        "country":country.text,
        "job": job.text,
        "framework": framework.text,
        "experience":experience.text,

      };

  LoginEventStart() {
    formKey = GlobalKey();
    name = TextEditingController();
   email = TextEditingController();
    phone = TextEditingController();
    country = TextEditingController();
    job = TextEditingController();
    framework = TextEditingController();
    experience = TextEditingController();
  }
}
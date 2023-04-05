import 'package:apppliaction_with_amal/Models/users/users.dart';



class LoginStates {}

class LoginStatesStart extends LoginStates {}

class LoginStateSuccess extends LoginStates {
  final users model;
  LoginStateSuccess({
    required this.model,
  });
}

class LoginStateFailed extends LoginStates {
  String msg;
  int errType;
  LoginStateFailed({
    required this.msg,
    required this.errType,
  });
}
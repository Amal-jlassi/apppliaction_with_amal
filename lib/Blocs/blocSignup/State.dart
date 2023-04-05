import 'package:apppliaction_with_amal/Models/users/users.dart';

class RegisterStates {}

class RegisterStatesStart extends RegisterStates {}

class RegisterStateSuccess extends RegisterStates {
  final users model;
  RegisterStateSuccess({
    required this.model,
  });
}

class RegisterStateFailed extends RegisterStates {
  String msg;
  int errType;
  RegisterStateFailed({
    required this.msg,
    required this.errType,
  });
}
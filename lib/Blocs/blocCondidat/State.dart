import 'package:apppliaction_with_amal/Models/offre/offre.dart';



class CondidatStates {}

class CondidatStatesStart extends CondidatStates {}

class CondidatStateSuccess extends CondidatStates {
  final Offre model;
  CondidatStateSuccess({
    required this.model,
  });
}

class CondidatStateFailed extends CondidatStates {
  String msg;
  int errType;
  CondidatStateFailed({
    required this.msg,
    required this.errType,
  });
}
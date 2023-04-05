import 'package:apppliaction_with_amal/Models/offre/offre.dart';



class CompanyStates {}

class   CompanyStatesStart extends CompanyStates {}

class CompanyStateSuccess extends CompanyStates {
  final Offre model;
  CompanyStateSuccess({
    required this.model,
  });
}

class CompanyStateFailed extends CompanyStates {
  String msg;
  int errType;
  CompanyStateFailed({
    required this.msg,
    required this.errType,
  });
}
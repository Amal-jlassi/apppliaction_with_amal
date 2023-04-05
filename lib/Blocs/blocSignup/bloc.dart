import 'package:apppliaction_with_amal/Blocs/blocSignup/State.dart';
import 'package:apppliaction_with_amal/Blocs/blocSignup/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterBloc extends Bloc<RegisterEvents, RegisterStates> {
  RegisterBloc() : super(RegisterStates()) {
    on<RegisterEventStart>(_sendData);
  }


  void _sendData(
      RegisterEventStart event,
      Emitter<RegisterStates> emit,
      ) async {
    emit(RegisterStatesStart());
    /*CustomResponse response = await serverGate.sendToServer(
      url: 'user/register',
      body: {
        "phone": event.phone.text,
        "city": event.city,
        "first_name": event.firstName.text,
        "last_name": event.lastName.text,
        "password": event.password.text,
        "password_confirmation": event.confirmPassword.text,
      },
    );

    if (response.success) {
      RegisterModel model = RegisterModel.fromJson(response.response!.data);
      emit(RegisterStateSuccess(model: model));
    } else {
      emit(
        RegisterStateFailed(
          errType: response.errType!,
          msg: response.msg,
        ),
      );
    }*/
  }
}
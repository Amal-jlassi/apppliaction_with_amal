import 'package:apppliaction_with_amal/Blocs/blocCondidat/State.dart';
import 'package:apppliaction_with_amal/Blocs/blocCondidat/events.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Models/users/users.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


class CondidatBloc extends Bloc<CondidatEvents, CondidatStates> {
  CondidatBloc() : super(CondidatStates()) {
    on<CondidatEventStart>(_sendData);
  }


  void _sendData(CondidatEventStart event,
      Emitter<CondidatStates> emit,) async {
    emit(CondidatStatesStart());
    //CustomResponse response = await serverGate.sendToServer(
    //      url: 'user/login',
    //       body: {
    //         "phone": event.email.text,
    //         "password": event.password.text,
    //      },
    //);
    //   if (response.success) {
    //     users model  = users model.fromJson(response.response!.data);
    //     Prefs.setInt('id', model.data.id);
    //     Prefs.setString('firstName', model.data.firstName);
    //     Prefs.setString('lastName', model.data.lastName);
    //     Prefs.setString('phone', model.data.phone);
    //     Prefs.setInt('cityId', model.data.cityId);
    //     Prefs.setString('image', model.data.image);
    //     Prefs.setString('fcmToken', model.data.fcmToken);
    //     Prefs.setString('status', model.data.status);
    //     Prefs.setString('isVerified', model.data.isVerified);
    //     Prefs.setString('token', model.data.token);
    //     emit(LoginStateSuccess(model: model));
    //   } else {
    //     emit(
    //       LoginStateFailed(
    //         errType: response.errType!,
    //         msg: response.msg,
    //       ),
    //     );
    //   }
  }
}
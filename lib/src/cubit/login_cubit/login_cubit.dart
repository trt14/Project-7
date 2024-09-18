import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/data_layer.dart';
import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final get = GetIt.I.get<DataLayer>();
  final api = NetworkingApi();

  LoginCubit() : super(LoginInitial());
  Future loginEvent({required String email}) async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    try {
      log("Iam at loginEvent");
      int code = await api.loginMethod(email: email);
      log("I exit loginMethod");
      if (code == 200) {
        get.email = email;
        emit(SuccessState());
      } else {
        emit(FailedState(error: "Invalid response code: $code"));
      }
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  debugLogin({required String token}) async {
    emit(LoadingState());
    try {
      get.user = await api.getUserProfile(token: token);
      get.email = get.user?.email;
      get.auth = AuthModel(token: token);
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

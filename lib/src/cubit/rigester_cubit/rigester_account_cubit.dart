import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'rigester_account_state.dart';

class RigesterAccountCubit extends Cubit<RigesterAccountState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();
  TextEditingController nameFristController = TextEditingController();
  TextEditingController nameLastController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  RigesterAccountCubit() : super(RigesterAccountInitial());

  Future rigesterEvent() async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    try {
      log("Iam at loginEvent");
      int code = await api.createAccount(
          email: emailController.text,
          fName: nameFristController.text,
          lName: nameLastController.text);
      log("I exit loginMethod");
      if (code == 200) {
        emit(SuccessfulState());
        userDataLayer.email = emailController.text;
      } else {
        emit(ErrorState(error: ""));
      }
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(ErrorState(error: error));
    }
  }
}

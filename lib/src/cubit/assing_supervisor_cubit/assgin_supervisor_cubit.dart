import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'assgin_supervisor_state.dart';

class AssginSupervisorCubit extends Cubit<AssginSupervisorState> {
  final api = NetworkingApi();
  TextEditingController idController = TextEditingController();

  List<String> role = ["admin", "user", "supervisor"];
  String token = GetIt.I.get<UserDataLayer>().auth!.token!;

  AssginSupervisorCubit() : super(AssginSupervisorInitial());

  selectRole() async {
    emit(SelectRoleState());
  }

  updateRole({required int index}) async {
    log("iam at updateRole");
    emit(LoadingState());
    try {
      await api.changeRole(
          role: role[index], id: idController.text, token: token);
      emit(SuccessState());
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

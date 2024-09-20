import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/models/project/init_project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'init_project_state.dart';

class InitProjectCubit extends Cubit<InitProjectState> {
  TextEditingController idController = TextEditingController();
  final api = NetworkingApi();
  InitProjectCubit() : super(InitProjectInitial());

  initProjectEvetn(InitProjectModel project) async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    try {
      log("Iam at initProjectEvetn");
      int code = await api.initProject(project: project);
      if (code == 200) {
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
}

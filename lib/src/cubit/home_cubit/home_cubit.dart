import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final user = GetIt.I.get<UserDataLayer>().user;
  // List<ProjectModel> projects =
  //     GetIt.I.get<UserDataLayer>().user?.projects ?? [];
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  Set<String> bootCamp = GetIt.I.get<ProjectDataLayer>().bootCamp;
  final api = NetworkingApi();

  HomeCubit() : super(HomeInitial());
  refresh() => emit(UpdateState());

  updateData() async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());
    try {
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      emit(SuccessState());
    } catch (expression) {
      log("iam at catch");
      log(expression.toString());
      log("before emit FailedState");
      final error = expression.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

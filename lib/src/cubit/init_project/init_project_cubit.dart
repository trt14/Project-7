import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/models/project/init_project_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'init_project_state.dart';

class InitProjectCubit extends Cubit<InitProjectState> {
  TextEditingController idController = TextEditingController();
  TextEditingController bootcampController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController projectNameController = TextEditingController();
  TextEditingController projectDescController = TextEditingController();

  final userDataLayer = GetIt.I.get<UserDataLayer>();

  final api = NetworkingApi();
  InitProjectCubit() : super(InitProjectInitial());

  Future<String> initProjectEvetn(
      InitProjectModel project, String startDate, String endDate) async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    ProjectModel newProject;
    try {
      log("Iam at initProjectEvetn");
      Response<dynamic> response = await api.initProject(
          project: project, token: userDataLayer.auth!.token!);
      newProject = ProjectModel.fromJson(response.data["data"]);
      newProject.startDate = startDate;
      newProject.endDate = endDate;

      if (response.statusCode == 200) {
        emit(SuccessState());
        print(newProject.projectId);
        seconedStepProjectEvetn(newProject);
      } else {
        emit(FailedState(error: "Invalid response code: $response.statusCode"));
      }
      return newProject.projectId;
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
    return "";
  }

  Future<String> seconedStepProjectEvetn(ProjectModel newProject) async {
    await Future.delayed(Duration(seconds: 3));
    emit(LoadingState());
    try {
      log("Iam at seconedStep");
      Response<dynamic> response = await api.updateProject(
          project: newProject, token: userDataLayer.auth!.token!);
      final currenProject = ProjectModel.fromJson(response.data["data"]);
      print(currenProject);

      if (response.statusCode == 200) {
        emit(SuccessState());
        print(newProject.bootcampName);
      } else {
        emit(FailedState(error: "Invalid response code: $response.statusCode"));
      }
      return newProject.projectId;
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
    return "";
  }
}

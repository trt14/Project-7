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
  bool edit = true;
  bool rate = true;
  bool isPublic = true;
  late String editDate = "";
  late String startDate = "";
  late String endDate = "";
  late String presDate = "";
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final List<String> options = [
    'app',
    'website',
    'vr',
    'ar',
    'ai',
    'ml',
    'ui/ux',
    'gaming',
    'unity',
    'cyber',
    'software',
    'automation',
    'robotic',
    'api',
    'analytics',
    'iot',
    'cloud'
  ];
  final api = NetworkingApi();
  InitProjectCubit() : super(InitProjectInitial());

  void toggleSwitch(bool value) {
    emit(ChangeStatus(isTrue: value));
  }

  Future<String> initProjectEvetn({
    required InitProjectModel project,
  }) async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    ProjectModel newProject;
    try {
      if (idController.text.isEmpty ||
          bootcampController.text.isEmpty ||
          typeController.text.isEmpty ||
          projectNameController.text.isEmpty ||
          projectDescController.text.isEmpty) {
        emit(FailedState(error: "Please fill the fields"));
      } else if (!options.contains(typeController.text.toLowerCase())) {
        emit(FailedState(
            error: "Please chosse the coorect one ( app,website,vr,cloud)"));
      } else if (editDate.isEmpty ||
          endDate.isEmpty ||
          startDate.isEmpty ||
          presDate.isEmpty) {
        emit(FailedState(error: "PLease choose a date"));
      } else {
        log("Iam at initProjectEvetn");
        Response<dynamic> response = await api.initProject(
            project: project, token: userDataLayer.auth!.token!);
        newProject = ProjectModel.fromJson(response.data["data"]);
        newProject.startDate = startDate;
        newProject.endDate = endDate;
        newProject.presentationDate = presDate;

        if (response.statusCode == 200) {
          emit(NotificationSteps(msg: "The first step is done"));
          print(newProject.projectId);
          seconedStepProjectEvetn(newProject);
        } else {
          emit(FailedState(
              error: "Invalid response code: $response.statusCode"));
        }
        return newProject.projectId;
      }
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
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 3));

    try {
      log("Iam at seconedStep");
      newProject.bootcampName = bootcampController.text;
      newProject.projectDescription = projectDescController.text;
      newProject.projectName = projectNameController.text;
      newProject.type = typeController.text;
      print(newProject.toJson());

      Response<dynamic> response = await api.updateProject(
          project: newProject, token: userDataLayer.auth!.token!);
      final currenProject = ProjectModel.fromJson(response.data["data"]);
      print(currenProject.toJson());

      if (response.statusCode == 200) {
        emit(NotificationSteps(msg: "The seconed step is done"));
        print(currenProject.bootcampName);
        thirdStepProjectEvetn(currenProject);
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

  Future<String> thirdStepProjectEvetn(ProjectModel newProject) async {
    emit(LoadingState());
    await Future.delayed(Duration(seconds: 3));

    try {
      log("Iam at thirdStep");
      print(newProject.toJson());
      newProject.allowRating = rate;
      newProject.allowEdit = edit;
      newProject.isPublic = isPublic;
      Response<dynamic> response = await api.updateProjectStatus(
          project: newProject, token: userDataLayer.auth!.token!);

      if (response.statusCode == 200) {
        emit(NotificationSteps(msg: "The third step is done"));
        userDataLayer.user =
            await api.getUserProfile(token: userDataLayer.auth!.token!);

        await Future.delayed(Duration(seconds: 1));

        emit(SuccessState());
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

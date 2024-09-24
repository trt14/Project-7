import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/models/project/image_project_model.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();
  List<MembersProjectModel> storageMemberList = [];
  //member controller
  TextEditingController memberIdController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  //links Controller
  TextEditingController typeController = TextEditingController();
  TextEditingController urlController = TextEditingController();
  TextEditingController editProjectNameController = TextEditingController();
  TextEditingController editProjectDescrController = TextEditingController();
  TextEditingController editProjectBootcampController = TextEditingController();
  TextEditingController editProjectTypeController = TextEditingController();
  bool edit = true;
  bool rate = true;
  bool isPublic = true;

  late String editDate = "";
  late String startDate = "";
  late String endDate = "";
  late String presDate = "";

  ProjectCubit() : super(ProjectInitial());
  void toggleSwitch(bool value) {
    emit(ChangeStatus(isTrue: value));
  }

  showDate() {
    emit(ShowDateState());
  }

  addMemberEvent({required ProjectModel project}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());

    try {
      storageMemberList = List.from(project.membersProject!);
      bool check = storageMemberList
          .any((member) => member.id == memberIdController.text.trim());
      if (!check) {
        storageMemberList.add(
          MembersProjectModel(
              position: positionController.text.trim(),
              id: memberIdController.text.trim()),
        );

        final response = await api.addMember(
            projectID: project.projectId.toString(),
            userInput: storageMemberList,
            token: userDataLayer.auth!.token!);
        log(response.toString());
        if (response == 200) {
          userDataLayer.user =
              await api.getUserProfile(token: userDataLayer.auth!.token!);
        }
        log(userDataLayer.user!.toJson().toString());
        emit(SuccessState());
        storageMemberList.clear();
        positionController.clear();
        memberIdController.clear();
      } else {
        emit(FailedState(error: "This member already in the team"));
      }
    } catch (exeprion) {
      project.membersProject!
          .removeWhere((memeber) => memeber.id == memberIdController.text);
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
    return userDataLayer.user!.projects!
        .where((element) => element.projectId == project.projectId)
        .first;
  }

  editProjectNameAndDescription({required ProjectModel project}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());
    try {
      log("Iam at editProject");
      project.projectName = editProjectNameController.text;
      project.projectDescription = editProjectDescrController.text;
      project.bootcampName = editProjectBootcampController.text;
      project.type = editProjectTypeController.text;
      project.startDate = startDate;
      project.endDate = endDate;
      project.presentationDate = presDate;
      project.timeEndEdit = editDate;
      project.isPublic = isPublic;
      project.allowEdit = edit;
      project.allowRating = rate;

      print(project.toJson());

      Response<dynamic> response = await api.updateProject(
          project: project, token: userDataLayer.auth!.token!);
      final currenProject = ProjectModel.fromJson(response.data["data"]);
      print(currenProject.toJson());
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      if (response.statusCode == 200) {
        emit(SuccessState());
      } else {
        emit(FailedState(error: "Invalid response code: $response.statusCode"));
      }
      return currenProject;
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  addLink({required ProjectModel project}) async {
    await Future.delayed(Duration.zero);
    emit(LoadingState());
    try {
      LinksProjectModel link = LinksProjectModel(
          type: typeController.text.trim(), url: urlController.text.trim());
      project.linksProject?.add(link);
      final response = await api.addProjectLink(
          link: project.linksProject!,
          token: userDataLayer.auth!.token!,
          id: project.projectId);
      if (response == 200) {
        typeController.clear();
        urlController.clear();

        emit(SuccessState());
      }
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
    return userDataLayer.user!.projects!
        .where((element) => element.projectId == project.projectId)
        .first;
  }

  Future uploadPresentation(
      {required ProjectModel project, required Uint8List file}) async {
    log("iam at uploadPresentation");
    emit(LoadingState());
    try {
      project = await api.editProjectPresentationFile(
          id: project.projectId,
          projectFile: file,
          token: userDataLayer.auth!.token!);
      emit(SuccessState());
      return project;
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  Future uploadImage(
      {required List<Uint8List> images, required String id}) async {
    emit(LoadingState());
    try {
      ProjectModel project = await api.editProjectImage(
          id: id, images: images, token: userDataLayer.auth!.token!);
      emit(SuccessState());
      return project;
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  Future uploadLogo({required String id, required Uint8List image}) async {
    emit(LoadingState());
    log("iam at uploadLogo");
    try {
      await api.updateProjectLogo(
          id: id, image: image, token: userDataLayer.auth!.token!);
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      emit(SuccessState());
      log("success");
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  Future deleteProject({required ProjectModel project}) async {
    emit(LoadingState());
    log("I am at delete project");
    try {
      await api.deleteProject(
          project: project, token: userDataLayer.auth!.token!);
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);

      emit(DeleteSuccessState());
      log("success");
    } catch (e) {
      log("iam at catch");
      log(e.toString());
      log("befire emit faildstate");

      final error = e.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  update() {
    emit(UpdateState());
  }
}

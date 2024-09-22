import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();
  List<MembersProjectModel> storageMemberList = [];
  TextEditingController memberIdController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  ProjectCubit() : super(ProjectInitial());

  addMemberEvent({required ProjectModel project}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());

    try {
      storageMemberList = List.from(project.membersProject!);
      storageMemberList.add(
        MembersProjectModel(
            position: positionController.text, id: memberIdController.text),
      );
      // Call the function to post data
      final response = await api.addMember(
          projectID: project.projectId.toString(),
          userInput: storageMemberList,
          token: userDataLayer.auth!.token!);
      log(response.toString());
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      log(userDataLayer.user!.toJson().toString());
      emit(SuccessState());
      return userDataLayer.user!.projects!
          .where((element) => element.projectId == project.projectId).first;
    } catch (exeprion) {
      project.membersProject!
          .removeWhere((memeber) => memeber.id == memberIdController.text);
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");

      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

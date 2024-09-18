import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/data_layer.dart';
import 'package:project_7/src/models/user/link_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final get = GetIt.I.get<DataLayer>();
  final api = NetworkingApi();
  var user = GetIt.I.get<DataLayer>().user;
  TextEditingController nameFristController = TextEditingController();
  TextEditingController nameLastController = TextEditingController();
  TextEditingController githubController = TextEditingController();
  TextEditingController linkedinController = TextEditingController();
  TextEditingController resumeController = TextEditingController();
  TextEditingController bindlinkController = TextEditingController();

  ProfileCubit() : super(ProfileInitial());

  enableEidtPofile({required bool edit}) {
    if (edit) {
      emit(EditState());
    } else {
      emit(ProfileInitial());
    }
  }

  editProfile() async {
    emit(LoadingState());
    try {
      user?.firstName = nameFristController.text;
      user?.lastName = nameLastController.text;
      if (user != null) {
        if (user!.link != null) {
          user!.link = LinkModel();
          user?.link?.bindlink = bindlinkController.text ?? "";
          user?.link?.github = githubController.text ?? "";
          user?.link?.linkedin = linkedinController.text ?? "";
          user?.link?.resume = resumeController.text ?? "";
        }
      } else {
        user?.link?.bindlink = bindlinkController.text ?? "";
        user?.link?.github = githubController.text ?? "";
        user?.link?.linkedin = linkedinController.text ?? "";
        user?.link?.resume = resumeController.text ?? "";
      }

      await api.updateUserProfile(token: get.auth!.token!, user: user!);
      emit(SuccessState());
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  logout() {
    emit(LoadingState());
    get.logoutFunction();
    emit(LogoutState());
  }
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();

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
      userDataLayer.user?.firstName = nameFristController.text;
      userDataLayer.user?.lastName = nameLastController.text;

      userDataLayer.user?.link?.bindlink = bindlinkController.text;
      userDataLayer.user?.link?.github = githubController.text;

      userDataLayer.user?.link?.linkedin = linkedinController.text;
      userDataLayer.user?.link?.resume = resumeController.text;

      //TODO: change it to auth data layer
      await api.updateUserProfile(
          token: userDataLayer.auth!.token!, user: userDataLayer.user!);
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      emit(SuccessState());
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }

  updateUserPic({required Uint8List image}) async {
    try {
      emit(LoadingState());
      await api.updateUserPicture(
          token: userDataLayer.auth!.token!, image: image);
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
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
    userDataLayer.logoutFunction();
    emit(LogoutState());
  }
}

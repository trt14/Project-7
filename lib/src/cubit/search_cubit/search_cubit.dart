import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final projectDataLayer = GetIt.I.get<ProjectDataLayer>();
  List<ProjectModel> projectResult = [];
  Set type = GetIt.I.get<ProjectDataLayer>().type;
  Set bootCamp = GetIt.I.get<ProjectDataLayer>().bootCamp;
  final api = NetworkingApi();

  TextEditingController nameController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController bootcampController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  SearchCubit() : super(SearchInitial());

  search() async {
    emit(LoadingState());

    try {
      List<ProjectModel> project = await api.filterProject(
          name: nameController.text.trim(),
          bootcamp: bootcampController.text.trim(),
          from: fromController.text.trim(),
          to: toController.text.trim(),
          type: typeController.text.trim());
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

  setState() {
    emit(ChangeState());
  }
}

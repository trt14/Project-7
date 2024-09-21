
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/models/project/project_model.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final projectDataLayer = GetIt.I.get<ProjectDataLayer>();
  List<ProjectModel> projectResult = [];
  Set type = GetIt.I.get<ProjectDataLayer>().type;
  Set bootCamp = GetIt.I.get<ProjectDataLayer>().bootCamp;

  TextEditingController nameController = TextEditingController();
  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();
  TextEditingController bootcampController = TextEditingController();
  TextEditingController typeController = TextEditingController();

  SearchCubit() : super(SearchInitial());

  search() async {}

  setState() {
    emit(SuccessState());
  }
}

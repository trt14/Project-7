import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final user = GetIt.I.get<UserDataLayer>().user;
  // List<ProjectModel> projects =
  //     GetIt.I.get<UserDataLayer>().user?.projects ?? [];
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  Set<String> bootCamp = GetIt.I.get<ProjectDataLayer>().bootCamp;

  HomeCubit() : super(HomeInitial());
  update() => emit(UpdateState());
}

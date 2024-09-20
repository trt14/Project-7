import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/models/project/project_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
      final user = GetIt.I.get<UserDataLayer>().user;
      List<ProjectModel> projects =  GetIt.I.get<UserDataLayer>().user?.projects ?? [];

  HomeCubit() : super(HomeInitial());
  update() => emit(UpdateState());

}


import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'public_state.dart';

class PublicCubit extends Cubit<PublicState> {
  final projectDataLayer = GetIt.I.get<ProjectDataLayer>();
  List<ProjectModel> publicProject =
      GetIt.I.get<ProjectDataLayer>().publicProjects ?? [];
  final api = NetworkingApi();

  PublicCubit() : super(PublicInitial());

  Future loadPublicProject() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 3));
    try {
      publicProject = await api.loadPublicProject();
      log("success");
      emit(SuccessState());
    } catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

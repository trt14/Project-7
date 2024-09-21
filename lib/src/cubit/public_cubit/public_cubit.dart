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
  List<ProjectModel> publicProjectFillterd = [];
  Set<String> bootCamp = {};

  final api = NetworkingApi();
  PublicCubit() : super(PublicInitial());

  filtter(int? value) {
    emit(LoadingState());

    if (value != null) {
      log("Filtering by specific type ${bootCamp.elementAt(value).toString()}");

      publicProjectFillterd = publicProject.where((element) {
        return element.bootcampName.toString() ==
            bootCamp.elementAt(value).toString();
      }).toList();
    } else {
      log("No filter applied, showing all projects");
      publicProjectFillterd = List.from(publicProject);
    }

    for (var project in publicProjectFillterd) {
      log(project.projectName.toString());
    }

    emit(SuccessState());
  }

  Future loadPublicProject() async {
    emit(LoadingState());
    await Future.delayed(const Duration(seconds: 3));
    try {
      publicProject = await api.loadPublicProject();
      log("success");
      if (publicProject.isNotEmpty) {
        publicProject
            .map((e) => bootCamp.add(e.bootcampName.toString()))
            .toList();
      }
      publicProjectFillterd = List.from(publicProject);
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

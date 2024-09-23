import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'public_state.dart';

class PublicCubit extends Cubit<PublicState> {
  final projectDataLayer = GetIt.I.get<ProjectDataLayer>();

  Set<String> bootCamp = GetIt.I.get<ProjectDataLayer>().bootCamp;
  Set<String> type = GetIt.I.get<ProjectDataLayer>().type;

  final api = NetworkingApi();
  PublicCubit() : super(PublicInitial());

  filtter(int? value) {
    emit(LoadingState());

    if (value != null) {
      log("Filtering by specific type ${bootCamp.elementAt(value).toString()}");

      GetIt.I.get<ProjectDataLayer>().publicProjectFillterd =
          GetIt.I.get<ProjectDataLayer>().publicProjects.where((element) {
        return element.bootcampName.toString() ==
            bootCamp.elementAt(value).toString();
      }).toList();
    } else {
      log("No filter applied, showing all projects");
      GetIt.I.get<ProjectDataLayer>().publicProjectFillterd =
          List.from(GetIt.I.get<ProjectDataLayer>().publicProjects);
    }

    for (var project in GetIt.I.get<ProjectDataLayer>().publicProjectFillterd) {
      log(project.projectName.toString());
    }

    emit(SuccessState());
  }

  Future loadPublicProject() async {
    await Future.delayed(const Duration(seconds: 3));

    emit(LoadingState());
    try {
      log("check if public storage is empty");
      log(GetIt.I.get<ProjectDataLayer>().publicProjects.isEmpty.toString());

      if (GetIt.I.get<ProjectDataLayer>().publicProjects.isEmpty) {
        log("iam will load data from api");
        GetIt.I.get<ProjectDataLayer>().publicProjects =
            await api.loadPublicProject();
        log("success");
        if (GetIt.I.get<ProjectDataLayer>().publicProjects.isNotEmpty) {
          GetIt.I
              .get<ProjectDataLayer>()
              .publicProjects
              .map((e) => bootCamp.add(e.bootcampName.toString()))
              .toList();

          GetIt.I
              .get<ProjectDataLayer>()
              .publicProjects
              .map((e) => type.add(e.type.toString()))
              .toList();
        }

        GetIt.I.get<ProjectDataLayer>().publicProjectFillterd =
            List.from(GetIt.I.get<ProjectDataLayer>().publicProjects);
      }
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

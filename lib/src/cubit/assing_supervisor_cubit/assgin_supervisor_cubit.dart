import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'assgin_supervisor_state.dart';

class AssginSupervisorCubit extends Cubit<AssginSupervisorState> {
  final api = NetworkingApi();
  List<String> role = ["admin", "user", "supervisor"];

  AssginSupervisorCubit() : super(AssginSupervisorInitial());

  selectRole() async {
    emit(SelectRoleState());
  }

  updateRole(String role) async {
    log("iam at updateRole");

    try{
      
    }catch (exeprion) {
      log("iam at catch");
      log(exeprion.toString());
      log("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(FailedState(error: error));
    }
  }
}

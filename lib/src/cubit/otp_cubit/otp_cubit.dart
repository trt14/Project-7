import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();

  OtpCubit() : super(OtpInitial());

  verifyUser({required String otp}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());
    try {
      userDataLayer.auth =
          await api.verifyMethod(email: userDataLayer.email ?? "", otp: otp);
      //change to auth data layer
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
}

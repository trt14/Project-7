import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/data_layer.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final get = GetIt.I.get<DataLayer>();
  final api = NetworkingApi();

  OtpCubit() : super(OtpInitial());

  verifyUser({required String otp}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingState());
    try {
      get.auth = await api.verifyMethod(email: get.email ?? "", otp: otp);
         get.user = await api.getUserProfile(token: get.auth!.token!);

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

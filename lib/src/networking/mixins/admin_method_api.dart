import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project_7/src/networking/constant_networking.dart';

mixin AdminMethodApi on ConstantNetworking {
  changeRole(
      {required String role, required String id, required String token}) async {
    log("iam at changeRole");
    try {
      final url = "$baseURL$changeUserRoleEndPoint";

      log(url);
      final response = await dio.put(
        url,
        data: {"id_user": id, "role": role},
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      return response;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }
}

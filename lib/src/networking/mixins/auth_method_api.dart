// Import necessary libraries
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project_7/src/models/auth/auth_model.dart';

import '../constant_networking.dart';

mixin AuthMethodApi on ConstantNetworking {
  /*
  *
  * Create a new account
  *
  * */
  Future createAccount(
      {required String email, String? fName, String? lName}) async {
    if (kDebugMode) {
      log("Iam at createAccount");
    }

    try {
      // Construct the API endpoint URL
      final url = '$baseURL$createAccountEndPoint';

      // Prepare the request data
      final data = {'email': email, 'f_name': fName, 'l_name': lName};

      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }

      // Return the response
      return response.statusCode;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }

  /*
  *
  * Login to the application
  *
  * */
  Future loginMethod({required String email}) async {
    if (kDebugMode) {
      log("Iam at Login");
    }

    try {
      // Construct the API endpoint URL
      final url = '$baseURL$loginEndPoint';
      log("this the email $email");
      // Prepare the request data
      final data = {'email': email};
      log("before dio requres");
      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);

      log("${response.statusMessage} ${response.statusCode}");

      // Return the response
      return response.statusCode;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }

  /*
  *
  * Verify the account using OTP
  *
  * */
  Future<AuthModel> verifyMethod(
      {required String email, required String otp}) async {
    if (kDebugMode) {
      log("Iam at verifyMethod");
    }

    try {
      // Construct the API endpoint URL
      final url = '$baseURL$verifyEndPoint';

      // Prepare the request data
      final data = {'email': email, 'otp': otp};

      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }

      // Return the response
      return AuthModel.fromJson(response.data["data"]);
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project_7/src/models/user/user_model.dart';
import 'package:project_7/src/networking/constant_networking.dart';

mixin UserMethodApi on ConstantNetworking {
  /*
  *
  * Method to fetch user profile information
  *
  * */
  Future<UserModel> getUserProfile({required String token}) async {
    if (kDebugMode) {
      log("Iam at getUserProfile");
    }
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$getProfileEndPoint';

      // Send a GET request to the API endpoint with the authentication token
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }

      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response data and create a UserModel object
        final Map<String, dynamic> user = response.data['data'];

        return UserModel.fromJson(user);
      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to fetch user profile');
      }
    } on DioException catch (e) {
      // If there was an error while sending the request, throw an exception with the error message
      throw Exception(e.message);
    }
  }

  /*
  *
  * Method to update user profile information
  *
  * */
  Future<UserModel> updateUserProfile(
      {required String token, required UserModel user}) async {
    if (kDebugMode) {
      log("Iam at UpdateUserProfile");
    }
    Map<String, dynamic> userJson = user.toJson();
    userJson.remove("link");
    userJson.remove('image_url');
    userJson.remove('projects');
    userJson.remove('email');
    userJson.remove('updated_at');
    userJson.remove('created_at');
    userJson.remove('role');
    userJson.remove('id');

    log(userJson.toString());
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$updateProfileEndPoint';

      // Send a PUT request to the API endpoint with the authentication token and the updated data
      final response = await dio.put(
        url,
        data: userJson,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }
      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response data and create a UserModel object
        final Map<String, dynamic> updatedData = response.data['data'];
        return UserModel.fromJson(updatedData);
      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to update user profile');
      }
    } on DioException catch (e) {
      // If there was an error while sending the request, throw an exception with the error message
      throw Exception(e.message);
    }
  }

  updateUserPicture({required String token, required Uint8List image}) async {
    if (kDebugMode) {
      log("Iam at updateUserPicture");
    }

    Map<String, dynamic> userPic = {"image": image};
    log(userPic.toString());
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$updateProfileEndPoint';

      // Send a PUT request to the API endpoint with the authentication token and the updated data
      final response = await dio.put(
        url,
        data: userPic,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }
      // Check if the request was successful (status code 200)
      if (response.statusCode == 200) {
        // Parse the response data and create a UserModel object
        return response.statusCode;
      } else {
        // If the request was not successful, throw an exception
        throw Exception('Failed to update user profile');
      }
    } on DioException catch (e) {
      log("this message in dioexption ${e.toString()}");
      // If there was an error while sending the request, throw an exception with the error message
 //     throw Exception("the file saized is big");
     throw Exception(e.message);
    }
  }
}

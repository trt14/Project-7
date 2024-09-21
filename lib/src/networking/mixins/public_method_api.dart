import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/constant_networking.dart';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

mixin PublicMethodApi on ConstantNetworking {
  loadPublicProject() async {
    if (kDebugMode) {
      log("Iam at loadPublicProject");
    }
    try {
      final url = '$baseURL$publicProjects';
      log(url);
      final response = await dio.get(url);
      List data = response.data["data"]['projects'];
      List<ProjectModel> list = [];
      for (var element in data) {
        list.add(ProjectModel.fromJson(element));
      }
      return list;
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }

  Future filterProject({
    String? name,
    String? to,
    String? from,
    String? bootcamp,
    String? type,
  }) async {
    if (kDebugMode) {
      log("Iam at filterProject");
    }
    final queryParams = {
      'name': name,
      'to': to,
      'from': from,
      'bootcamp': bootcamp,
      'type': type, // Required
    };
    queryParams.removeWhere((key, value) => value == null || value == '');

    try {
      final url = "$baseURL$publicProjects";
      final response = await dio.get(url, queryParameters: queryParams);
      List data = response.data["data"]['projects'];
      List<ProjectModel> list = [];
      for (var element in data) {
        list.add(ProjectModel.fromJson(element));
      }
      return list;
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }
}
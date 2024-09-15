import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:project_7/src/helper/converter.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/networking/constant_networking.dart';

mixin ProjectMethodApi on ConstantNetworking {
  //method was tested
  Future getProject({required String id}) async {
    if (kDebugMode) {
      log("Iam at getProject");
    }

    try {
      final url = "$baseURL$getProjectEndPoint/$id";
      log(url);
      final response = await dio.get(url);
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }
      if (response.statusCode == 200) {
        return ProjectModel.fromJson(response.data["data"]);
      } else {
        throw Exception('Failed to get poject');
      }
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }

  // method was not tested
  Future updateProjectLogo({required String id, required File image}) async {
    final imageByt = image.readAsBytes();
    if (kDebugMode) {
      log("Iam at updateProjectLogo");
    }
    try {
      final url = "$baseURL$editProjectLogoEndPoint/$id";
      final response = await dio.put(url, data: imageByt);
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }
      if (response.statusCode == 200) {
        return response.statusCode;
      } else {
        throw Exception('Failed to update project logo');
      }
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }

  // method was tested
  Future updateProject(
      {required ProjectModel project, required String token}) async {
    if (kDebugMode) {
      log("Iam at editProject");
    }
    try {
      final url = "$baseURL$editProjectBaseEndPoint/${project.projectId}";
      String? startDate = project.startDate;
      String? endDate = project.endDate;
      String? presentationDate = project.presentationDate;
      project = dataFromator(project);
      final response = await dio.put(
        url,
        data: project.toJson(),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      project.startDate = startDate;
      project.endDate = endDate;
      project.presentationDate = presentationDate;
      if (kDebugMode) {
        log("${response.statusMessage} ${response.statusCode}");
      }
      if (response.statusCode == 200) {
        return response.statusCode;
      } else {
        throw Exception('Failed to update project infromation');
      }
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }

//Edit Project Presentation
//was not tested
  Future editProjectPresentationFile(
      {required String token,
      required String id,
      required File projectFile}) async {
    if (kDebugMode) {
      log("Iam at editProjectPresentationFile");
    }
    try {
      final url = "$baseURL$editProjectPresentationEndPoint/$id";
      final response = await dio.put(
        url,
        data: {"presentation_file": projectFile.readAsBytes()},
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      if (response.statusCode == 200) return response.data["data"];
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }

//not tested
  Future editProjectImage(
      {required String id, required List<File> imageFiles}) async {
    if (kDebugMode) {
      log("Iam at editProjectImage");
    }
    List formatedImage = [];
    for (var element in imageFiles) {
      formatedImage.add(element.readAsBytes());
    }
    try {
      final url = "$baseURL$editProjectImagesEndPoint/$id";
      final response = await dio.put(url, data: {"images": formatedImage});
      if (response.statusCode == 200) return response.statusCode;
    } on DioException catch (error) {
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      throw const FormatException("~there error with API");
    }
  }
}

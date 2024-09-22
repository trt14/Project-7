import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/networking/constant_networking.dart';

mixin MemberMethodApi on ConstantNetworking {
  addMember(
      {required String projectID,
      required List<MembersProjectModel> userInput,
      required String token}) async {
    try {
      final url = '$baseURL$editProjectMembersEndPoint/$projectID';
      // List<MembersProjectModel> membersList = userInput.map((data) {
      //   return MembersProjectModel(
      //       position: data['position']!, id: data['user_id']!);
      // }).toList();

      List<Map<String, dynamic>> listMember = [];

      for (var element in userInput) {
        final json = element.toJson();
        json.remove("first_name");
        json.remove("last_name");
        json.remove("email");
        json.remove("image_url");
        json.remove("link");
        json["user_id"] = json.remove("id");
        listMember.add(json);
      }

      log(listMember.toString());

      final response = await dio.put(
        url,
        data: {"members": listMember},
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );
      print(response);

      return response.statusCode;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }
}

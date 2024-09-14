import 'package:dio/dio.dart';

abstract class ConstantNetworking {
  // Initialize a Dio instance for making HTTP requests.
  final dio = Dio();

  // Define the base URL for the API endpoints.
  final String baseURL = "https://tuwaiq-gallery.onrender.com";

  // Authentication Endpoints
  final String createAccountEndPoint = "/v1/auth/create/new/account"; // POST
  final String loginEndPoint = "/v1/auth/login"; // POST
  final String verifyEndPoint = "/v1/auth/verify"; // POST

  // User Profile Endpoints
  final String getProfileEndPoint = "/v1/user/profile"; // GET
  final String updateProfileEndPoint = "/v1/user/update/profile"; // PUT

  // Project Endpoints
  final String createProjectEndPoint = "/v1/supervisor/create/project"; // POST
  final String editProjectLogoEndPoint = "/v1/user/edit/project/logo"; // PUT
  final String editProjectBaseEndPoint = "/v1/user/edit/project/base"; // PUT
  final String editProjectPresentationEndPoint =
      "/v1/user/edit/project/presentation"; // PUT
  final String editProjectImagesEndPoint =
      "/v1/user/edit/project/images"; // PUT
  final String editProjectLinksEndPoint = "/v1/user/edit/project/link"; // PUT
  final String editProjectMembersEndPoint =
      "/v1/user/edit/project/members"; // PUT
  final String deleteProjectEndPoint =
      "/v1/supervisor/delete/project"; // DELETE
  final String getProjectEndPoint = "/v1/project"; // GET

  // Search Projects Endpoints
  final String searchProjectsEndPoint = "/v1/search/projects"; // GET

  // Administration Endpoints
  final String changeUserRoleEndPoint = "/v1/admin/change/role/user"; // PUT
}

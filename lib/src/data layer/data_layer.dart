import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/models/user/user_model.dart';
class DataLayer {
  UserModel? user;
  AuthModel? auth;
  List<ProjectModel>? projects = [];
  String? email;
}

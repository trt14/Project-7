import 'package:intl/intl.dart';
import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/models/user/user_model.dart';

class UserDataLayer {
  UserModel? user;
  AuthModel? auth;
  List<ProjectModel>? projects = [];
  String? email;

  logoutFunction() {
    user = null;
    auth = null;
    projects?.clear();
    email = null;
  }
}

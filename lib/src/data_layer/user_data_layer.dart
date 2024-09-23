import 'package:intl/intl.dart';
import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/models/user/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserDataLayer {
  UserModel? user;

  AuthModel? auth;
  List<ProjectModel>? projects = [];
  String? email;

  // Initialize SharedPreferences
  final SharedPreferences prefs = GetIt.I<SharedPreferences>();

  // Constructor to initialize the UserDataLayer
  UserDataLayer() {
    // Load data from SharedPreferences when the UserDataLayer is instantiated
    loadData();
  }

  /*
  *
  * Method: Load authentication data from SharedPreferences
  *
  * */
  Future<void> loadData() async {
    // Retrieve the 'auth' data from SharedPreferences as a JSON string
    final String? authJson = prefs.getString('auth');
    if (authJson != null) {
      auth = AuthModel.fromJson(jsonDecode(authJson));
    }

    // Retrieve the 'user' data from SharedPreferences as a JSON string
    final String? userJson = prefs.getString('user');
    if (userJson != null) {
      user = UserModel.fromJson(jsonDecode(userJson));
    }

    // Retrieve the 'projects' data from SharedPreferences as a JSON string
    final String? projectsJson = prefs.getString('projects');
    if (projectsJson != null) {
      projects = (jsonDecode(projectsJson) as List)
          .map((item) => ProjectModel.fromJson(item))
          .toList();
    }

    // Retrieve the 'email' data from SharedPreferences as a string
    email = prefs.getString('email');
  }

  /*
  *
  * Method: Save user data to SharedPreferences
  *
  * */
  Future<void> saveUser(UserModel user) async {
    this.user = user;
    await prefs.setString('user', jsonEncode(user.toJson()));
  }

  /*
  *
  * Method: Save authentication data to SharedPreferences
  *
  * */
  Future<void> saveAuth(AuthModel auth) async {
    this.auth = auth;
    await prefs.setString('auth', jsonEncode(auth.toJson()));
  }

  /*
  *
  * Method: Save projects data to SharedPreferences
  *
  * */
  Future<void> saveProjects(List<ProjectModel> projects) async {
    this.projects = projects;
    await prefs.setString(
        'projects', jsonEncode(projects.map((item) => item.toJson()).toList()));
  }

  /*
  *
  * Method: Save all data to SharedPreferences
  *
  * */
  Future<void> saveData() async {
    if (auth != null) {
      await prefs.setString('auth', jsonEncode(auth!.toJson()));
    }

    if (user != null) {
      await prefs.setString('user', jsonEncode(user!.toJson()));
    }

    if (projects != null) {
      await prefs.setString('projects',
          jsonEncode(projects!.map((item) => item.toJson()).toList()));
    }

    if (email != null) {
      await prefs.setString('email', email!);
    }
  }

  /*
  *
  * Method: Logout function to clear all user data and save to SharedPreferences
  *
  * */
  Future<void> logoutFunction() async {
    user = null;
    auth = null;
    projects?.clear();
    email = null;
    await prefs.remove('user');
    await prefs.remove('auth');
    await prefs.remove('projects');
    await prefs.remove('email');
  }
}

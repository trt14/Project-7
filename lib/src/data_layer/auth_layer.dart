import 'dart:convert';

import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLayerData {
  AuthModel? auth;

  AuthLayerData() {
    loadDataAuth();
  }

  // Saves the provided authentication data to shared preferences.
  Future<void> saveAuth({required AuthModel authData}) async {
    auth = authData;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String authJson = jsonEncode(authData.toJson()); // Convert to JSON string
    await prefs.setString("auth", authJson); // Save JSON string
  }

  // Loads the authentication data from shared preferences.
  Future<void> loadDataAuth() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('auth')) {
      String? authString = prefs.getString("auth");
      if (authString != null) {
        Map<String, dynamic> authMap =
            jsonDecode(authString); // Convert JSON string to map
        auth = AuthModel.fromJson(authMap);
      }
    }
  }

  // Logs out the user by removing the authentication data from shared preferences.
  Future<void> logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("auth");
    auth = null;
  }
}

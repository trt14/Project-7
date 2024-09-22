import 'package:get_it/get_it.dart';
import 'package:project_7/src/data_layer/project_data_layer.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> setup() async {
  GetIt.I.registerSingleton<UserDataLayer>(UserDataLayer());
  GetIt.I.registerSingleton<ProjectDataLayer>((ProjectDataLayer()));

  // Shared Preferences setup
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  GetIt.I.registerSingleton<SharedPreferences>(sharedPreferences);
}

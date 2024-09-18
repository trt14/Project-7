import 'package:get_it/get_it.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';

Future<void> setup() async {
  GetIt.I.registerSingleton<UserDataLayer>(UserDataLayer());
}

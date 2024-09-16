import 'package:get_it/get_it.dart';
import 'package:project_7/src/data%20layer/data_layer.dart';
void setup() {

  GetIt.I.registerSingleton<DataLayer>(DataLayer());
}
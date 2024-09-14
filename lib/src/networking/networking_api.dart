import 'package:project_7/src/networking/constant_networking.dart';
import 'package:project_7/src/networking/mixins/auth_api.dart';
import 'package:project_7/src/networking/mixins/user_methods_api.dart';

class NetworkingApi extends ConstantNetworking with AuthApi, UserApi {}

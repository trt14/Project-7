import 'package:project_7/src/networking/constant_networking.dart';
import 'package:project_7/src/networking/mixins/admin_method_api.dart';
import 'package:project_7/src/networking/mixins/auth_method_api.dart';
import 'package:project_7/src/networking/mixins/member_method_api.dart';
import 'package:project_7/src/networking/mixins/project_method_api.dart';
import 'package:project_7/src/networking/mixins/public_method_api.dart';
import 'package:project_7/src/networking/mixins/user_methods_api.dart';

class NetworkingApi extends ConstantNetworking
    with
        AuthMethodApi,
        UserMethodApi,
        ProjectMethodApi,
        MemberMethodApi,
        PublicMethodApi,
        AdminMethodApi {}

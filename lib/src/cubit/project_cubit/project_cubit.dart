import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_7/src/data_layer/user_data_layer.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/networking/networking_api.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final userDataLayer = GetIt.I.get<UserDataLayer>();
  final api = NetworkingApi();
  List<MembersProjectModel> storageMemberList = [];

  ProjectCubit() : super(ProjectInitial());

  addMemberEvent({required String projectID}) async {
    await Future.delayed(Duration.zero);

    emit(LoadingMemberProjectState());

    try {
      List<MembersProjectModel> userInput = [
        MembersProjectModel(
            position: "somethingB", id: "6ca9bc46-217e-48ed-9fde-4b0ff57ad4b6"),
        MembersProjectModel(
            position: "BB", id: "10545b55-4875-441d-88e8-f835acc72374"),
      ];
      storageMemberList = List.from(userInput);

      // Call the function to post data
      final a = await api.addMember(
          projectID: projectID,
          userInput: userInput,
          token: userDataLayer.auth!.token!);
      print(a);
      userDataLayer.user =
          await api.getUserProfile(token: userDataLayer.auth!.token!);
      print(userDataLayer.user!.toJson());
      emit(SuccessMemberProjectState());
      for (var element in userDataLayer.user!.projects!) {
        if (element.projectId == projectID) {
          return element;
        }
      }
    } catch (exeprion) {
      print("iam at catch");
      print(exeprion.toString());
      print("befire emit faildstate");
      final error = exeprion.toString().replaceAll("FormatException: ", "");
      emit(ErrorMemberProjectState());
    }
  }
}

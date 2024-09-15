import 'package:project_7/src/models/project/image_project_model.dart';
import 'package:project_7/src/models/project/member_project_model.dart';

class ProjectModel {
  ProjectModel({
    required this.projectId,
    this.type,
    this.projectName,
    this.bootcampName,
    this.startDate,
    this.endDate,
    this.presentationDate,
    this.projectDescription,
    this.logoUrl,
    this.presentationUrl,
    this.userId,
    this.adminId,
    this.timeEndEdit,
    this.allowEdit,
    this.allowRating,
    this.isPublic,
    this.rating,
    this.createAt,
    this.updateAt,
    this.imagesProject,
    this.linksProject,
    this.membersProject,
  });
  late final String projectId;
  String? type;
  String? projectName;
  String? bootcampName;
  String? startDate;
  String? endDate;
  String? presentationDate;
  String? projectDescription;
  String? logoUrl;
  String? presentationUrl;
  String? userId;
  String? adminId;
  String? timeEndEdit;
  bool? allowEdit;
  bool? allowRating;
  bool? isPublic;
  double? rating;
  String? createAt;
  String? updateAt;
  List<ImagesProjectModel>? imagesProject;
  List<LinksProjectModel>? linksProject;
  List<MembersProjectModel>? membersProject = [];

  ProjectModel.fromJson(Map<String, dynamic> json) {
    projectId = json['project_id'];
    type = json['type'];
    projectName = json['project_name'];
    bootcampName = json['bootcamp_name'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    presentationDate = json['presentation_date'];
    projectDescription = json['project_description'];
    logoUrl = json['logo_url'] ?? "";
    presentationUrl = json['presentation_url'];
    userId = json['user_id'];
    adminId = json['admin_id'];
    timeEndEdit = json['time_end_edit'];
    allowEdit = json['allow_edit'];
    allowRating = json['allow_rating'];
    isPublic = json['is_public'];
    rating = (json['rating'] as num).toDouble();
    createAt = json['create_at'];
    updateAt = json['update_at'];
    imagesProject = List.from(json['images_project'])
        .map((e) => ImagesProjectModel.fromJson(e))
        .toList();
    linksProject = List.from(json['links_project'])
        .map((e) => LinksProjectModel.fromJson(e))
        .toList();
    membersProject = List.from(json['members_project'])
        .map((e) => MembersProjectModel.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['project_id'] = projectId;
    data['type'] = type;
    data['project_name'] = projectName;
    data['bootcamp_name'] = bootcampName;
    data['start_date'] = startDate;
    data['end_date'] = endDate;
    data['presentation_date'] = presentationDate;
    data['project_description'] = projectDescription;
    data['logo_url'] = logoUrl;
    data['presentation_url'] = presentationUrl;
    data['user_id'] = userId;
    data['admin_id'] = adminId;
    data['time_end_edit'] = timeEndEdit;
    data['allow_edit'] = allowEdit;
    data['allow_rating'] = allowRating;
    data['is_public'] = isPublic;
    data['rating'] = rating;
    data['create_at'] = createAt;
    data['update_at'] = updateAt;
    data['images_project'] = imagesProject?.map((e) => e.toJson()).toList();
    data['links_project'] = linksProject?.map((e) => e.toJson()).toList();
    data['members_project'] = membersProject?.map((e) => e.toJson()).toList();
    return data;
  }
}

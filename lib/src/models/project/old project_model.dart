// import 'member_project_model.dart';

// class ProjectModel {
//   String projectId;
//   String type;
//   String projectName;
//   String bootcampName;
//   String? startDate;
//   String? endDate;
//   String? presentationDate;
//   String? projectDescription;
//   String? logoUrl;
//   String? presentationUrl;
//   String userId;
//   String adminId;
//   DateTime timeEndEdit;
//   bool allowEdit;
//   bool allowRating;
//   bool isPublic;
//   double rating;
//   DateTime createAt;
//   DateTime updateAt;
//   List<dynamic> imagesProject;
//   List<dynamic> linksProject;
//   List<MemberProject> membersProject;

//   ProjectModel({
//     required this.projectId,
//     required this.type,
//     required this.projectName,
//     required this.bootcampName,
//     this.startDate,
//     this.endDate,
//     this.presentationDate,
//     this.projectDescription,
//     this.logoUrl,
//     this.presentationUrl,
//     required this.userId,
//     required this.adminId,
//     required this.timeEndEdit,
//     required this.allowEdit,
//     required this.allowRating,
//     required this.isPublic,
//     required this.rating,
//     required this.createAt,
//     required this.updateAt,
//     required this.imagesProject,
//     required this.linksProject,
//     required this.membersProject,
//   });

//   factory ProjectModel.fromJson(Map<String, dynamic> json) {
//     return ProjectModel(
//       projectId: json['project_id'],
//       type: json['type'],
//       projectName: json['project_name'],
//       bootcampName: json['bootcamp_name'],
//       startDate: json['start_date'],
//       endDate: json['end_date'],
//       presentationDate: json['presentation_date'],
//       projectDescription: json['project_description'],
//       logoUrl: json['logo_url'],
//       presentationUrl: json['presentation_url'],
//       userId: json['user_id'],
//       adminId: json['admin_id'],
//       timeEndEdit: DateTime.parse(json['time_end_edit']),
//       allowEdit: json['allow_edit'],
//       allowRating: json['allow_rating'],
//       isPublic: json['is_public'],

//       // TODO check the type of json['rating']
//       rating: (json['rating'] as num).toDouble(),

//       createAt: DateTime.parse(json['create_at']),
//       updateAt: DateTime.parse(json['update_at']),
//       imagesProject: json['images_project'] as List<dynamic>,
//       linksProject: json['links_project'] as List<dynamic>,
//       membersProject: (json['members_project'] as List)
//           .map((i) => MemberProject.fromJson(i))
//           .toList(),
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'project_id': projectId,
//       'type': type,
//       'project_name': projectName,
//       'bootcamp_name': bootcampName,
//       'start_date': startDate,
//       'end_date': endDate,
//       'presentation_date': presentationDate,
//       'project_description': projectDescription,
//       'logo_url': logoUrl,
//       'presentation_url': presentationUrl,
//       'user_id': userId,
//       'admin_id': adminId,
//       'time_end_edit': timeEndEdit.toIso8601String(),
//       'allow_edit': allowEdit,
//       'allow_rating': allowRating,
//       'is_public': isPublic,
//       'rating': rating,
//       'create_at': createAt.toIso8601String(),
//       'update_at': updateAt.toIso8601String(),
//       'images_project': imagesProject,
//       'links_project': linksProject,
//       'members_project': membersProject.map((m) => m.toJson()).toList(),
//     };
//   }
// }

import 'package:project_7/src/models/user/link_model.dart';
import 'package:project_7/src/models/project/project_model.dart';

class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? role;
  String? imageUrl;
  LinkModel? link;
  List<ProjectModel>? projects = [];
  String? createdAt;
  String? updatedAt;

  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.role,
    this.imageUrl,
    this.link,
    this.projects,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['first_name'] ?? "",
      lastName: json['last_name'] ?? "",
      email: json['email'] ?? "",
      role: json['role'] ?? "",
      imageUrl: json['image_url'] ?? "",
      link: LinkModel.fromJson(json['link']),
      projects: (json['projects'] as List)
          .map((i) => ProjectModel.fromJson(i))
          .toList(),
      createdAt: json['created_at'] ?? "",
      updatedAt: json['updated_at'] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'role': role,
      'image_url': imageUrl,
      'link': link?.toJson(),
      'projects': projects?.map((p) => p.toJson()).toList(),
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

import '../project/project_model.dart';

class UserModel {
  String id;
  String firstName;
  String lastName;
  String email;
  String role;
  String imageUrl;
  Map<String, dynamic> link;
  List<ProjectModel> projects;
  DateTime createdAt;
  DateTime updatedAt;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    required this.imageUrl,
    required this.link,
    required this.projects,
    required this.createdAt,
    required this.updatedAt,
  });
  void printUserDetails() {
    print('ID: $id');
    print('First Name: $firstName');
    print('Last Name: $lastName');
    print('Email: $email');
    print('Role: $role');
    print('Image URL: $imageUrl');
    print('Link: ${link.toString()}');
    print('Projects: ${projects.map((project) => project.toString()).join(", ")}');
    print('Created At: $createdAt');
    print('Updated At: $updatedAt');
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      role: json['role'],
      imageUrl: json['image_url'] ?? "",
      link: json['link'] ?? "",
      projects: (json['projects'] as List)
              .map((i) => ProjectModel.fromJson(i))
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] ?? ""),
      updatedAt: DateTime.parse(json['updated_at'] ?? ""),
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
      'link': link,
      'projects': projects.map((p) => p.toJson()).toList(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}

import '../user/link_model.dart';

class MemberProject {
  String id;
  String firstName;
  String lastName;
  String email;
  String position;
  String? imageUrl;
  LinkModel link;

  MemberProject({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.position,
    this.imageUrl,
    required this.link,
  });

  factory MemberProject.fromJson(Map<String, dynamic> json) {
    return MemberProject(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      position: json['position'],
      imageUrl: json['image_url'],
      link: LinkModel.fromJson(json['link']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'position': position,
      'image_url': imageUrl,
      'link': link.toJson(),
    };
  }
}

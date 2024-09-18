import 'package:project_7/src/models/user/link_model.dart';

class MembersProjectModel {
  MembersProjectModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.position,
    this.imageUrl,
    this.link,
  });
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? position;
  String? imageUrl;
  LinkModel? link;

  MembersProjectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    position = json['position'];
    imageUrl = json['image_url'];
    link = LinkModel.fromJson(json['link']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['position'] = position;
    data['image_url'] = imageUrl;
    data['link'] = link?.toJson();
    return data;
  }
}

import 'package:objectbox/objectbox.dart';

@Entity()
class AuthModel {
  @Id()
  int id = 0; // ObjectBox needs an ID for each entity

  String? token;
  String? refreshToken;
  int? expiresAt;

  AuthModel({this.token, this.refreshToken, this.expiresAt});

  AuthModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
    expiresAt = json['expiresAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['refreshToken'] = refreshToken;
    data['expiresAt'] = expiresAt;
    return data;
  }
}

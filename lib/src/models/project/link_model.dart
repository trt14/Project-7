class LinkModel {
  String? github;
  String? linkedin;
  String? resume;
  String? bindlink;

  LinkModel({this.github, this.linkedin, this.resume, this.bindlink});

  LinkModel.fromJson(Map<String, dynamic> json) {
    github = json['github'];
    linkedin = json['linkedin'];
    resume = json['resume'];
    bindlink = json['bindlink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['github'] = github;
    data['linkedin'] = linkedin;
    data['resume'] = resume;
    data['bindlink'] = bindlink;
    return data;
  }
}

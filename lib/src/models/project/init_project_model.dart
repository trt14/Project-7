class InitProjectModel {
  InitProjectModel({
    required this.userId,
    required this.timeEndEdit,
    required this.edit,
  });
  late final String userId;
  late final String timeEndEdit;
  late final String edit;

  InitProjectModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    timeEndEdit = json['time_end_edit'];
    edit = json['edit'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user_id'] = userId;
    data['time_end_edit'] = timeEndEdit;
    data['edit'] = edit;
    return data;
  }
}

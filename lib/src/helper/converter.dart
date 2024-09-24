import 'package:intl/intl.dart';
import 'package:project_7/src/models/project/project_model.dart';

dataFromator(ProjectModel project) {
  //started date
  String? startDate = project.startDate;

  DateTime startDateTime = DateTime.parse(startDate!);

  String newStartedDate = DateFormat('dd/MM/yyyy').format(startDateTime);
  project.startDate = newStartedDate;
  // end date
  String? endDate = project.endDate;

  DateTime endDateTime = DateTime.parse(endDate!);

  String newEndedDate = DateFormat('dd/MM/yyyy').format(endDateTime);
  project.endDate = newEndedDate;

  // end time edit date
  String? editTimeEdit = project.timeEndEdit;

  DateTime editTimeEditTime = DateTime.parse(editTimeEdit!);

  String newEndEditTime = DateFormat('dd/MM/yyyy').format(editTimeEditTime);
  project.timeEndEdit = newEndEditTime;

  //persentaion date
  String? persentation = project.presentationDate;
  DateTime persentationDate = DateTime.parse(persentation!);
  String newPersentationDate =
      DateFormat('dd/MM/yyyy').format(persentationDate);
  project.presentationDate = newPersentationDate;
  print(project.toJson());
  return project;
}

int getDaysDifference(String startDate, String endDate) {
  DateTime start = DateTime.parse(startDate);
  DateTime end = DateTime.parse(endDate);

  return end.difference(start).inDays;
}

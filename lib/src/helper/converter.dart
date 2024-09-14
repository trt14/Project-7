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

  //persentaion date
  String? persentation = project.presentationDate;
  DateTime persentationDate = DateTime.parse(persentation!);
  String newPersentationDate =
      DateFormat('dd/MM/yyyy').format(persentationDate);
  project.presentationDate = newPersentationDate;
  return project;
}

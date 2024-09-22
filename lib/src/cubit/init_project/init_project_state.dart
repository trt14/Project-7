part of 'init_project_cubit.dart';

@immutable
sealed class InitProjectState {}

final class InitProjectInitial extends InitProjectState {}

final class InitProject extends InitProjectState {}

final class LoadingState extends InitProjectState {}

final class SuccessState extends InitProjectState {}

final class NotificationSteps extends InitProjectState {
  final String msg;
  NotificationSteps({required this.msg});
}

final class FailedState extends InitProjectState {
  final String error;
  FailedState({required this.error});
}

final class ChangeStatus extends InitProjectState {
  final bool isTrue;
  ChangeStatus({required this.isTrue});
}

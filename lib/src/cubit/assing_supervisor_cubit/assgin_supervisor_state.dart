part of 'assgin_supervisor_cubit.dart';

@immutable
sealed class AssginSupervisorState {}

final class AssginSupervisorInitial extends AssginSupervisorState {}

final class SelectRoleState extends AssginSupervisorState {}

final class FailedState extends AssginSupervisorState {
  final String error;
  FailedState({required this.error});
}

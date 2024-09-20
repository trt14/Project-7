part of 'rigester_account_cubit.dart';

@immutable
sealed class RigesterAccountState {}

final class RigesterAccountInitial extends RigesterAccountState {}

final class LoadingState extends RigesterAccountState {}

final class SuccessfulState extends RigesterAccountState {}

final class ErrorState extends RigesterAccountState {
  final String error;
  ErrorState({required this.error});
}

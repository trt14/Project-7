part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoadingState extends LoginState {}

final class SuccessState extends LoginState {}

final class FailedState extends LoginState {
  final String error;
  FailedState({required this.error});
}

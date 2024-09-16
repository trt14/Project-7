part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class SuccessState extends LoginState {}

final class DioError extends LoginState {}

final class FaildState extends LoginState {
  final String error;
  FaildState({required this.error});
}

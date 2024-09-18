part of 'otp_cubit.dart';

@immutable
sealed class OtpState {}

final class OtpInitial extends OtpState {}

final class LoadingState extends OtpState {}

final class SuccessState extends OtpState {}

final class FailedState extends OtpState {
  final String error;
  FailedState({required this.error});
}

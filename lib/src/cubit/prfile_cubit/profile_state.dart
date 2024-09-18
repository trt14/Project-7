part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class EditState extends ProfileState{}
final class LoadingState extends ProfileState{}
final class SuccessState extends ProfileState{}
final class LogoutState extends ProfileState{}
final class FailedState extends ProfileState {
  final String error;
  FailedState({required this.error});
}

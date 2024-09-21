part of 'public_cubit.dart';

@immutable
sealed class PublicState {}

final class PublicInitial extends PublicState {}

final class LoadingState extends PublicState {}

final class SuccessState extends PublicState {}

final class FailedState extends PublicState {
  final String error;
  FailedState({required this.error});
}

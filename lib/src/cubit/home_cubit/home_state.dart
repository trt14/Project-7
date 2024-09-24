part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class UpdateState extends HomeState {}

final class LoadingState extends HomeState {}

final class SuccessState extends HomeState {}

final class FailedState extends HomeState {
  final String error;
  FailedState({required this.error});
}

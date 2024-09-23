part of 'home_navigation_cubit.dart';

@immutable
sealed class HomeNavigationState {}

final class HomeNavigationInitial extends HomeNavigationState {}

final class Navigate extends HomeNavigationState{}



final class LoadingState extends HomeNavigationState {}

final class SuccessState extends HomeNavigationState {}

final class FailedState extends HomeNavigationState {
  final String error;
  FailedState({required this.error});
}
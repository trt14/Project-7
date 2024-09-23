part of 'project_cubit.dart';

@immutable
sealed class ProjectState {}

final class ProjectInitial extends ProjectState {}

final class LoadingState extends ProjectState {}

final class SuccessState extends ProjectState {}

final class FailedState extends ProjectState {
  final String error;
  FailedState({required this.error});
}

final class ShowDateState extends ProjectState {}

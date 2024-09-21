part of 'project_cubit.dart';

@immutable
sealed class ProjectState {}

final class ProjectInitial extends ProjectState {}

final class LoadingMemberProjectState extends ProjectState {}

final class SuccessMemberProjectState extends ProjectState {}

final class ErrorMemberProjectState extends ProjectState {}

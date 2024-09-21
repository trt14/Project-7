part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class LoadingState extends SearchState{}
final class SuccessState extends SearchState{}
final class ChangeState extends SearchState{}

final class FailedState extends SearchState {
  final String error;
  FailedState({required this.error});
}

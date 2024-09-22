part of 'review_cubit.dart';

@immutable
sealed class ReviewState {}

final class ReviewInitial extends ReviewState {}

final class LoadingState extends ReviewState {}

final class SuccessState extends ReviewState {}

final class FailedState extends ReviewState {
  final String error;
  FailedState({required this.error});
}

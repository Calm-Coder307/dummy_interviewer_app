part of 'list_bloc.dart';

@immutable
abstract class ListState {}

class ListInitial extends ListState {}

class LoadingListState extends ListState {}

class LoadedListState extends ListState {
  final List<InterviewerEntity> interviewerList;

  LoadedListState({required this.interviewerList});
}

class LoadedRatingsState extends ListState {
  final List<RatingEntity> ratings;

  LoadedRatingsState({required this.ratings});
}

class ReactionAddedState extends ListState {
  final List<RatingEntity> ratings;

  ReactionAddedState({required this.ratings});
}

class QualitiesAddedstate extends ListState {}
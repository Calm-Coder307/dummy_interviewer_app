part of 'list_bloc.dart';

@immutable
abstract class ListEvent {}

class GetAllInterviewerEvent extends ListEvent {}

class GetAllRatingsEvent extends ListEvent {}

// class ReactionEvent extends ListEvent {
//   var boldText;

//   ReactionEvent({required this.boldText});
// }

// class QualitiesEvent extends ListEvent {
//   var quality;

//   QualitiesEvent({required this.quality});
// }
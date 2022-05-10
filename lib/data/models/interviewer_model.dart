
import '../../domain/entities/interviewer_entities.dart';

class InterviewerModel extends InterviewerEntity {
  
  final String title;
  final String first;
  final String last;
  final String cell;

  InterviewerModel({
    required this.title,
    required this.first,
    required this.last,
    required this.cell
  }) : super (
    title: title,
    first: first,
    last: last,
    cell: cell,
  );

  factory InterviewerModel.fromJson(Map<String, dynamic> json) {
    return InterviewerModel(
      title: json['name']['title'], 
      first: json['name']['first'], 
      last: json['name']['last'], 
      cell: json['cell'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'first': first,
      'last': last,
      'cell': cell,
    };
  }
}
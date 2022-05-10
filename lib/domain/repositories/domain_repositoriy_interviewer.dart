

import '../entities/interviewer_entities.dart';

abstract class DomainRepositoryInterviewer {

  Future<List<InterviewerEntity>> getAllUsers();

}
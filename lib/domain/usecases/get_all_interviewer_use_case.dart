


import '../entities/interviewer_entities.dart';
import '../repositories/domain_repositoriy_interviewer.dart';

class GetAllInterviewerUseCase {
  final DomainRepositoryInterviewer repository;
  

  GetAllInterviewerUseCase({required this.repository});

  Future<List<InterviewerEntity>> call() async {
    return await repository.getAllUsers();
  }
  
}
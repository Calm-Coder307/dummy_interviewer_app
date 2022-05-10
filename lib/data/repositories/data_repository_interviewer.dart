

import '../../domain/entities/interviewer_entities.dart';
import '../../domain/repositories/domain_repositoriy_interviewer.dart';

import '../data_source/remote_data_source.dart';

class DataRepositoryInterviewer extends DomainRepositoryInterviewer {

  final RemoteDataSource remoteDataSource;

  DataRepositoryInterviewer({required this.remoteDataSource});

  @override
  Future<List<InterviewerEntity>> getAllUsers() async {
    return await remoteDataSource.getData();
  }
}
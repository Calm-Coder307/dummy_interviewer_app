import 'package:kiwi/kiwi.dart';
import 'package:pro1/data/data_source/local_data_source/rating_data.dart';
import 'package:pro1/data/data_source/remote_data_source.dart';
import 'package:pro1/data/repositories/data_repository_interviewer.dart';
import 'package:pro1/data/repositories/data_repository_ratings.dart';
import 'package:pro1/domain/repositories/domain_repositoriy_interviewer.dart';
import 'package:pro1/domain/repositories/domain_repository_ratings.dart';
import 'package:pro1/domain/usecases/get_all_interviewer_use_case.dart';
import 'package:pro1/domain/usecases/get_all_ratings_usecase.dart';
import 'package:pro1/presentation/logic/bloc/list_bloc.dart';

part 'injector_config.g.dart';

abstract class InjectorConfig {
  static KiwiContainer? container;

  static void setup() {
    container = KiwiContainer();
    _$InjectorConfig()._configure();
  }

  static final resolve = container!.resolve;

  @Register.factory(ListBloc)

  // UseCases
  @Register.factory(GetAllInterviewerUseCase)
  @Register.factory(GetAllRatingsUseCase)

  // Repositories
  @Register.factory(DomainRepositoryInterviewer, from: DataRepositoryInterviewer)
  @Register.factory(DomainRepositoryRatings, from: DataRepositoryRatings)

  // DataSources
  @Register.factory(RemoteDataSource)
  @Register.factory(RatingDataSource)

  void _configure();
}
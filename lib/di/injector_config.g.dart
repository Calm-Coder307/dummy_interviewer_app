// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector_config.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$InjectorConfig extends InjectorConfig {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => ListBloc(
          getAllInterviewerUseCase: c<GetAllInterviewerUseCase>(),
          getAllRatingsUseCase: c<GetAllRatingsUseCase>()))
      ..registerFactory((c) => GetAllInterviewerUseCase(
          repository: c<DomainRepositoryInterviewer>()))
      ..registerFactory((c) =>
          GetAllRatingsUseCase(ratingRepository: c<DomainRepositoryRatings>()))
      ..registerFactory<DomainRepositoryInterviewer>((c) =>
          DataRepositoryInterviewer(remoteDataSource: c<RemoteDataSource>()))
      ..registerFactory<DomainRepositoryRatings>(
          (c) => DataRepositoryRatings(ratingDataSource: c<RatingDataSource>()))
      ..registerFactory((c) => RemoteDataSource())
      ..registerFactory((c) => RatingDataSource());
  }
}

import 'package:pro1/data/data_source/local_data_source/rating_data.dart';
import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';
import 'package:pro1/domain/repositories/domain_repository_ratings.dart';

class DataRepositoryRatings extends DomainRepositoryRatings{
  final RatingDataSource ratingDataSource;

  DataRepositoryRatings({required this.ratingDataSource});

  @override
  Future<List<RatingEntity>> getAllRatings() async {
    return await ratingDataSource.getRatingData();
  }
}
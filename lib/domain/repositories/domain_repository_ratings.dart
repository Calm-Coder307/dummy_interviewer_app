import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';

abstract class DomainRepositoryRatings {

  Future<List<RatingEntity>> getAllRatings();
  
}
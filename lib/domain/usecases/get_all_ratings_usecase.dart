import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';
import 'package:pro1/domain/repositories/domain_repository_ratings.dart';

import '../entities/interviewer_entities.dart';
import '../repositories/domain_repositoriy_interviewer.dart';

class GetAllRatingsUseCase {
  final DomainRepositoryRatings ratingRepository;

  GetAllRatingsUseCase({required this.ratingRepository});

  Future<List<RatingEntity>> calll() async {
    return await ratingRepository.getAllRatings();
  }
}
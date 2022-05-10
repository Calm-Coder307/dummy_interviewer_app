
import 'package:flutter/material.dart';
// import 'package:interview_app/domain/entities/rating_data/ratingcard_entity.dart';
import 'package:pro1/data/models/rating_model.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class RatingDataSource {
  Future<List<RatingModel>> getRatingData() async {

    return _ratingsData();
  }

    Future<List<RatingModel>> _ratingsData() async {

    const ratingData = [
      RatingModel(
        title: 'Awesome', 
        description: "Best Interviewer Ever!",
        emoji: "👏🏻",
        color: Colors.blue,
      ),
      RatingModel(
        title: "Good",
        description: "Nice person. Really Nice!",
        emoji: "👍🏻",
        color: Colors.green  
      ),
      RatingModel(
        title: "Neutral",
        description: "Ummm... Okay. I guess!",
        emoji: "😐",
        color: Colors.grey
      ),
      RatingModel(
        title: "Bad",
        description: "Needs to Improve! A LOT!",
        emoji: "☹",
        color: Colors.red
      ),
    ];

    return await Future.value(ratingData);
    // return ratingData;

   }
}
